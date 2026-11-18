.class public Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# instance fields
.field private final mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;->message:Ljava/lang/String;

    const-string v0, "layout_inflater"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 34
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$id;->toast_msg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;->mTextView:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;->mImageView:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 38
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    if-nez p3, :cond_0

    .line 39
    new-instance p3, Landroid/widget/Toast;

    invoke-direct {p3, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    const/16 p3, 0x11

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4, p4}, Landroid/widget/Toast;->setGravity(III)V

    .line 43
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 44
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method

.method public static show(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 1

    .line 48
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;->show()V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "ToastUtil"

    const-string v1, "Toast show..."

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
