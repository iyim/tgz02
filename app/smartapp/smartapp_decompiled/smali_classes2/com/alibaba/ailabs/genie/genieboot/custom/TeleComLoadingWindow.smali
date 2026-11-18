.class public Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;
.super Ljava/lang/Object;
.source "TeleComLoadingWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow$LoadingHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeActivityForTelecom"

.field private static cdm:Landroid/os/CountDownTimer;

.field private static lastTag:Ljava/lang/String;

.field private static logo:Landroid/widget/ImageView;

.field private static mHandler:Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow$LoadingHandler;

.field private static wManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->lastTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    sput-object p0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->lastTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(I)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->dissmissTeleComLoadingView(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200()Landroid/os/CountDownTimer;
    .locals 1

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->cdm:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 20
    sput-object p0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->cdm:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$300()V
    .locals 0

    .line 20
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->dismissLoadingView()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static dismissLoadingView()V
    .locals 2

    :try_start_0
    const-string v0, "HomeActivityForTelecom"

    const-string v1, "really removeLoadingWindow;"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->logo:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->wManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->logo:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 113
    sput-object v0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->logo:Landroid/widget/ImageView;

    .line 114
    sput-object v0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->wManager:Landroid/view/WindowManager;

    .line 115
    sput-object v0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->mHandler:Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow$LoadingHandler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static dissmissTeleComLoadingView(I)V
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->postDelayedMessage(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static postDelayedMessage(I)V
    .locals 4

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostDelayedMessage : delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeActivityForTelecom"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->mHandler:Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow$LoadingHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    int-to-long v2, p0

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow$LoadingHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public static showLoadingWindow(Landroid/content/Context;)V
    .locals 4

    const-string v0, "HomeActivityForTelecom"

    const-string v1, "showLoadingWindow"

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow$LoadingHandler;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow$LoadingHandler;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->mHandler:Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow$LoadingHandler;

    const-string v0, "window"

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->wManager:Landroid/view/WindowManager;

    .line 37
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/16 v2, 0x508

    .line 38
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 41
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    const/16 v2, 0x7f6

    .line 42
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d3

    .line 44
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_0
    const/4 v2, -0x3

    .line 46
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 47
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 48
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 49
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 50
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 52
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->logo:Landroid/widget/ImageView;

    .line 53
    sget-object p0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->logo:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/genie/genieboot/R$drawable;->telecom_logo:I

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 54
    sget-object p0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->wManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->logo:Landroid/widget/ImageView;

    invoke-interface {p0, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->startTimer()V

    return-void
.end method

.method public static startTimer()V
    .locals 5

    .line 70
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow$1;

    const-wide/16 v1, 0x4e20

    const-wide/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow$1;-><init>(JJ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->cdm:Landroid/os/CountDownTimer;

    .line 94
    sget-object v0, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->cdm:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
