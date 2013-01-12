package Padre::Wx::FBP::DebugOptions;

## no critic

# This module was generated by Padre::Plugin::FormBuilder::Perl.
# To change this module edit the original .fbp file and regenerate.
# DO NOT MODIFY THIS FILE BY HAND!

use 5.008005;
use utf8;
use strict;
use warnings;
use Padre::Wx ();
use Padre::Wx::Role::Main ();
use Padre::Wx::ComboBox::History ();

our $VERSION = '0.97';
our @ISA     = qw{
	Padre::Wx::Role::Main
	Wx::Dialog
};

sub new {
	my $class  = shift;
	my $parent = shift;

	my $self = $class->SUPER::new(
		$parent,
		-1,
		Wx::gettext("Debug Launch Parameters"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
		Wx::DEFAULT_DIALOG_STYLE,
	);

	$self->{m_staticText4} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Perl interpreter:"),
	);

	$self->{perl_interpreter} = Wx::TextCtrl->new(
		$self,
		-1,
		"",
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);
	$self->{perl_interpreter}->SetMinSize( [ 280, -1 ] );

	$self->{m_staticText8} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Perl Options:"),
	);

	$self->{perl_args} = Wx::TextCtrl->new(
		$self,
		-1,
		"",
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);

	$self->{m_staticText5} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Perl Script to run:"),
	);

	$self->{find_script} = Padre::Wx::ComboBox::History->new(
		$self,
		-1,
		"",
		Wx::DefaultPosition,
		[ 250, -1 ],
		[
			"find_script",
		],
	);

	$self->{script} = Wx::Button->new(
		$self,
		-1,
		Wx::gettext("&Browse"),
		Wx::DefaultPosition,
		[ 50, -1 ],
	);

	Wx::Event::EVT_BUTTON(
		$self,
		$self->{script},
		sub {
			shift->browse_scripts(@_);
		},
	);

	$self->{m_staticText51} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Perl Script options:"),
	);

	$self->{script_options} = Wx::TextCtrl->new(
		$self,
		-1,
		"",
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);

	$self->{m_staticText241} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Run in Directory:"),
	);

	$self->{run_directory} = Padre::Wx::ComboBox::History->new(
		$self,
		-1,
		"",
		Wx::DefaultPosition,
		[ 250, -1 ],
		[
			"run_directory",
		],
	);

	$self->{browse_run_directory} = Wx::Button->new(
		$self,
		-1,
		Wx::gettext("&Browse"),
		Wx::DefaultPosition,
		[ 50, -1 ],
	);

	Wx::Event::EVT_BUTTON(
		$self,
		$self->{browse_run_directory},
		sub {
			shift->browse_run_directory(@_);
		},
	);

	my $m_staticline1 = Wx::StaticLine->new(
		$self,
		-1,
		Wx::DefaultPosition,
		Wx::DefaultSize,
		Wx::LI_HORIZONTAL,
	);

	my $debug = Wx::Button->new(
		$self,
		Wx::ID_OK,
		Wx::gettext("Launch Debugger"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);
	$debug->SetDefault;

	my $cancel = Wx::Button->new(
		$self,
		Wx::ID_CANCEL,
		Wx::gettext("Cancel"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);

	my $bSizer4 = Wx::BoxSizer->new(Wx::HORIZONTAL);
	$bSizer4->Add( $self->{find_script}, 1, Wx::ALIGN_CENTER_VERTICAL | Wx::ALL | Wx::EXPAND, 5 );
	$bSizer4->Add( $self->{script}, 0, Wx::ALIGN_CENTER_VERTICAL | Wx::ALIGN_RIGHT | Wx::RIGHT, 5 );

	my $bSizer41 = Wx::BoxSizer->new(Wx::HORIZONTAL);
	$bSizer41->Add( $self->{run_directory}, 1, Wx::ALIGN_CENTER_VERTICAL | Wx::ALL | Wx::EXPAND, 5 );
	$bSizer41->Add( $self->{browse_run_directory}, 0, Wx::ALIGN_CENTER_VERTICAL | Wx::ALIGN_RIGHT | Wx::RIGHT, 5 );

	my $fgSizer1 = Wx::FlexGridSizer->new( 2, 2, 0, 10 );
	$fgSizer1->AddGrowableCol(1);
	$fgSizer1->SetFlexibleDirection(Wx::BOTH);
	$fgSizer1->SetNonFlexibleGrowMode(Wx::FLEX_GROWMODE_SPECIFIED);
	$fgSizer1->Add( $self->{m_staticText4}, 0, Wx::ALIGN_CENTER_VERTICAL | Wx::ALL, 5 );
	$fgSizer1->Add( $self->{perl_interpreter}, 0, Wx::ALL | Wx::EXPAND, 5 );
	$fgSizer1->Add( $self->{m_staticText8}, 0, Wx::ALIGN_CENTER_VERTICAL | Wx::ALL, 5 );
	$fgSizer1->Add( $self->{perl_args}, 0, Wx::ALL | Wx::EXPAND, 5 );
	$fgSizer1->Add( $self->{m_staticText5}, 0, Wx::ALIGN_CENTER_VERTICAL | Wx::ALL, 5 );
	$fgSizer1->Add( $bSizer4, 1, Wx::EXPAND, 5 );
	$fgSizer1->Add( $self->{m_staticText51}, 0, Wx::ALL, 5 );
	$fgSizer1->Add( $self->{script_options}, 0, Wx::ALL | Wx::EXPAND, 5 );
	$fgSizer1->Add( $self->{m_staticText241}, 0, Wx::ALL, 5 );
	$fgSizer1->Add( $bSizer41, 1, Wx::EXPAND, 5 );

	my $buttons = Wx::BoxSizer->new(Wx::HORIZONTAL);
	$buttons->Add( $debug, 0, Wx::ALL, 5 );
	$buttons->Add( 100, 0, 1, Wx::EXPAND, 5 );
	$buttons->Add( $cancel, 0, Wx::ALL, 5 );

	my $vsizer = Wx::BoxSizer->new(Wx::VERTICAL);
	$vsizer->Add( $fgSizer1, 1, Wx::EXPAND, 5 );
	$vsizer->Add( $m_staticline1, 0, Wx::ALL | Wx::EXPAND, 5 );
	$vsizer->Add( $buttons, 0, Wx::EXPAND, 5 );

	my $sizer = Wx::BoxSizer->new(Wx::HORIZONTAL);
	$sizer->Add( $vsizer, 1, Wx::ALL | Wx::EXPAND, 5 );

	$self->SetSizerAndFit($sizer);
	$self->Layout;

	return $self;
}

sub perl_interpreter {
	$_[0]->{perl_interpreter};
}

sub perl_args {
	$_[0]->{perl_args};
}

sub find_script {
	$_[0]->{find_script};
}

sub script_options {
	$_[0]->{script_options};
}

sub run_directory {
	$_[0]->{run_directory};
}

sub browse_scripts {
	$_[0]->main->error('Handler method browse_scripts for event script.OnButtonClick not implemented');
}

sub browse_run_directory {
	$_[0]->main->error('Handler method browse_run_directory for event browse_run_directory.OnButtonClick not implemented');
}

1;

# Copyright 2008-2013 The Padre development team as listed in Padre.pm.
# LICENSE
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl 5 itself.

