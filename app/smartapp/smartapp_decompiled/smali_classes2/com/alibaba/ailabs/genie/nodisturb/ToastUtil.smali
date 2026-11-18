.class public Lcom/alibaba/ailabs/genie/nodisturb/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static showTextToas(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 22
    sget-object v0, Lcom/alibaba/ailabs/genie/nodisturb/ToastUtil;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/nodisturb/ToastUtil;->weakReference:Ljava/lang/ref/WeakReference;

    .line 26
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/alibaba/ailabs/genie/setting/R$layout;->layout_toast_top:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 27
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->tv_message:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    sget-object p1, Lcom/alibaba/ailabs/genie/nodisturb/ToastUtil;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 30
    sget-object p1, Lcom/alibaba/ailabs/genie/nodisturb/ToastUtil;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Toast;

    invoke-virtual {p1, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 31
    sget-object p0, Lcom/alibaba/ailabs/genie/nodisturb/ToastUtil;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-nez p0, :cond_2

    .line 32
    sget-object p0, Lcom/alibaba/ailabs/genie/nodisturb/ToastUtil;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Toast;

    const/16 p1, 0x37

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 33
    sget-object p0, Lcom/alibaba/ailabs/genie/nodisturb/ToastUtil;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Toast;

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 34
    sget-object p0, Lcom/alibaba/ailabs/genie/nodisturb/ToastUtil;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x400

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 35
    sget-object p0, Lcom/alibaba/ailabs/genie/nodisturb/ToastUtil;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method
