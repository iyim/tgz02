.class public final Lcom/alibaba/ailabs/tg/utils/ToastUtils;
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

    sput-object v0, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->HANDLER:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 23
    sput v0, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->sLayoutId:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 17
    sput-object p0, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static cancel()V
    .locals 1

    .line 126
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 128
    sput-object v0, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method private static getView(I)Landroid/view/View;
    .locals 2
    .param p0    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 170
    sget v0, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->sLayoutId:I

    if-ne v0, p0, :cond_0

    .line 171
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->sViewWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 178
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/tg/UtilsConfig;->getInstance()Lcom/alibaba/ailabs/tg/UtilsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/UtilsConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    .line 179
    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->sViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 181
    sput p0, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->sLayoutId:I

    return-object v0
.end method

.method private static show(II)V
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 133
    invoke-static {}, Lcom/alibaba/ailabs/tg/UtilsConfig;->getInstance()Lcom/alibaba/ailabs/tg/UtilsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/UtilsConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static varargs show(II[Ljava/lang/Object;)V
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 137
    invoke-static {}, Lcom/alibaba/ailabs/tg/UtilsConfig;->getInstance()Lcom/alibaba/ailabs/tg/UtilsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/UtilsConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static show(Landroid/view/View;I)V
    .locals 2

    .line 156
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/tg/utils/ToastUtils$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/tg/utils/ToastUtils$2;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static show(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 145
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/tg/utils/ToastUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/tg/utils/ToastUtils$1;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static varargs show(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0

    .line 141
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

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

    .line 117
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->getView(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    .line 118
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->show(Landroid/view/View;I)V

    return-object p0
.end method

.method public static showCustomShort(I)Landroid/view/View;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 108
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->getView(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    .line 109
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->show(Landroid/view/View;I)V

    return-object p0
.end method

.method public static showLong(I)V
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 81
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->show(II)V

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

    .line 91
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->show(II[Ljava/lang/Object;)V

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

    .line 72
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs showLong(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 101
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->show(Ljava/lang/String;I[Ljava/lang/Object;)V

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

    .line 43
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->show(II)V

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

    .line 53
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->show(II[Ljava/lang/Object;)V

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

    .line 34
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs showShort(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->show(Ljava/lang/String;I[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
