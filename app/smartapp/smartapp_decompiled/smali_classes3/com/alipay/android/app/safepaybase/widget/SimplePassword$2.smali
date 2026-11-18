.class Lcom/alipay/android/app/safepaybase/widget/SimplePassword$2;
.super Ljava/lang/Object;
.source "SimplePassword.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$2;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
