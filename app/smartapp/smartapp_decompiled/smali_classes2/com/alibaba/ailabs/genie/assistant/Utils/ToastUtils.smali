.class public final Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static final HANDLER:Landroid/os/Handler;

.field private static sLayoutId:I

.field private static sToast:Landroid/widget/Toast;

.field private static sViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->HANDLER:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 22
    sput v0, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->sLayoutId:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 18
    sput-object p0, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->sToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static cancel()V
    .locals 1

    .line 72
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 74
    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->sToast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method private static getView(I)Landroid/view/View;
    .locals 2
    .param p0    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 114
    sget v0, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->sLayoutId:I

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->sViewWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 121
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    .line 122
    nop

    nop

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->sViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 124
    sput p0, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->sLayoutId:I

    return-object v0
.end method

.method private static show(II)V
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 80
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static varargs show(II[Ljava/lang/Object;)V
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 84
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static show(Landroid/view/View;I)V
    .locals 2

    .line 102
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils$2;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static show(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 92
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils$1;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static varargs show(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0

    .line 88
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static showCustomLong(I)Landroid/view/View;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 66
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->getView(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    .line 67
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->show(Landroid/view/View;I)V

    return-object p0
.end method

.method public static showCustomShort(I)Landroid/view/View;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 60
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->getView(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    .line 61
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->show(Landroid/view/View;I)V

    return-object p0
.end method

.method public static showLong(I)V
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 48
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->show(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs showLong(I[Ljava/lang/Object;)V
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 52
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->show(II[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static showLong(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 44
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs showLong(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 56
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->show(Ljava/lang/String;I[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static showShort(I)V
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 32
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->show(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs showShort(I[Ljava/lang/Object;)V
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->show(II[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static showShort(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 28
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs showShort(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->show(Ljava/lang/String;I[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
