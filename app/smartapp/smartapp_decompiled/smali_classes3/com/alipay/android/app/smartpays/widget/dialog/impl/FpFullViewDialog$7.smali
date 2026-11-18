.class Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$7;
.super Ljava/lang/Object;
.source "FpFullViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->dismiss(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$7;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$7;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->access$300(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
