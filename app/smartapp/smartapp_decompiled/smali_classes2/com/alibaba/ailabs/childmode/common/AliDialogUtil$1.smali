.class final Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$1;
.super Ljava/lang/Object;
.source "AliDialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->createNetworkDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 93
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.NETWORK_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 95
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 97
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
