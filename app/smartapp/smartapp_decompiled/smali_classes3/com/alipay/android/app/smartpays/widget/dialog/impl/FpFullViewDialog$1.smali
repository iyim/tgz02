.class Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$1;
.super Ljava/lang/Object;
.source "FpFullViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$1;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

    iput-object p2, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$1;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$1;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$1;->val$listener:Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$1;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$1;->val$context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$1;->val$msg:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$1;->val$listener:Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->access$000(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)V

    return-void
.end method
