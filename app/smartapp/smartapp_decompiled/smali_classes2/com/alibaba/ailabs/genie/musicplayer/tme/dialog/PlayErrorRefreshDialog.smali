.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;
.super Landroid/app/Dialog;
.source "PlayErrorRefreshDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$ClickListener;,
        Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
