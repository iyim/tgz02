.class Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$7;
.super Ljava/lang/Object;
.source "FpDefaultDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->dismiss(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$7;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$7;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->access$400(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;->dismiss()V

    return-void
.end method
