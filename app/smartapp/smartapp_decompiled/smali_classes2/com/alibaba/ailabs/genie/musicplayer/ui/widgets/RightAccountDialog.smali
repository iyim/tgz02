.class public Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;
.super Landroid/app/Dialog;
.source "RightAccountDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$ClickListener;,
        Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;
    }
.end annotation


# static fields
.field public static final ACTIVATE_RIGHT:Ljava/lang/String; = "activate_right"

.field public static final BINDING_CAN_RECEIVE:Ljava/lang/String; = "binding_can_receive"

.field public static final BINDING_NOT_RECEIVE:Ljava/lang/String; = "binding_not_receive"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
