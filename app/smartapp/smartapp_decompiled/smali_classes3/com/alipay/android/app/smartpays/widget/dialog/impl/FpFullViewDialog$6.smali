.class Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$6;
.super Ljava/lang/Object;
.source "FpFullViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->updateMsg(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

.field final synthetic val$color:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;Ljava/lang/String;I)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$6;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

    iput-object p2, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$6;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$6;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$6;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->access$400(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$6;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$6;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->access$400(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$6;->val$color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
