(*
 * Whonix Starter ( whonixstarter_error.pas )
 *
 * Copyright: 2012 - 2023 ENCRYPTED SUPPORT LP <adrelanos@riseup.net>
 * Author: einsiedler90@protonmail.com
 * License: GPL-3+-with-additional-terms-1
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * .
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * .
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *)

unit WhonixStarter_Error;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TErrorForm }

  TErrorForm = class(TForm)
    ButtonErrorOK: TButton;
    MemoError: TMemo;
    procedure ButtonErrorOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private

  public

  end;

var
  ErrorForm: TErrorForm;

implementation

{$R *.lfm}

{ TErrorForm }

procedure TErrorForm.ButtonErrorOKClick(Sender: TObject);
begin
  Halt;
end;

procedure TErrorForm.FormCreate(Sender: TObject);
begin
  ErrorForm.Icon.LoadFromResourceName(Hinstance, 'MAINICON');
end;

procedure TErrorForm.FormHide(Sender: TObject);
begin
  Halt;
end;

end.
