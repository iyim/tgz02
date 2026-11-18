.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;
.super Landroid/app/Dialog;
.source "MusicBindingRemoveDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$ClickListener;,
        Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
