.class final Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$3;
.super Ljava/lang/Object;
.source "AliDialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->showGlobalErrorDialog(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 179
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->access$100()Landroid/app/Dialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 181
    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->access$102(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
