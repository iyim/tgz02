.class public Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;
.super Ljava/lang/Object;
.source "ChildFaceIdentifyPresenter.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChildFaceIdentify"


# instance fields
.field private childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

.field private childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

.field private childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private currentStatus:I

.field private hasNotifiedCurrentIsChild:Z

.field private identifyCount:I

.field private isPresenterDestroyed:Z

.field private isPresenterHasLifeCycle:Z

.field private view:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

.field private weakReferenceActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->countDownTimer:Landroid/os/CountDownTimer;

    .line 50
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->weakReferenceActivity:Ljava/lang/ref/WeakReference;

    .line 52
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    .line 53
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterHasLifeCycle:Z

    .line 56
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterDestroyed:Z

    .line 60
    iput v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->identifyCount:I

    .line 64
    iput v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    .line 68
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->hasNotifiedCurrentIsChild:Z

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->view:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    if-nez v0, :cond_1

    .line 73
    :cond_0
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-nez v0, :cond_2

    .line 77
    :cond_1
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->view:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->view:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    .line 78
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    .line 79
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    return-void

    .line 74
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Builder \u6784\u5efa\u9519\u8bef"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;-><init>(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->view:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterHasLifeCycle:Z

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->weakReferenceActivity:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterDestroyed:Z

    return p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->identifyCount:I

    return p0
.end method

.method static synthetic access$708(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)I
    .locals 2

    .line 44
    iget v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->identifyCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->identifyCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Landroid/os/CountDownTimer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$802(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method


# virtual methods
.method public beginCountDownTimer()V
    .locals 7

    .line 441
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "ChildFaceIdentify"

    const-string v1, "beginCountDownTimer: "

    .line 442
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 446
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->countDownTimer:Landroid/os/CountDownTimer;

    .line 448
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$3;

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$3;-><init>(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;JJ)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->countDownTimer:Landroid/os/CountDownTimer;

    const/16 v0, 0x12

    .line 492
    iput v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    .line 493
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 494
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->view:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    const/16 v1, 0x23

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;->showViewResult(I)V

    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 229
    iput v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    .line 230
    iput v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->identifyCount:I

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public initChildFaceClient()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->view:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->view:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;->getAttachedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    .line 246
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->view:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;-><init>(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 288
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    new-instance v1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;-><init>(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->setStatusListerner(Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$onStatusListerner;)V

    const/16 v0, 0x11

    .line 346
    iput v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    return-void

    .line 237
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    const-string v1, "Surface is null !"

    if-nez v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    .line 241
    invoke-interface {v0, v2, v1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;->onError(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 238
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAny(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 222
    sget-boolean p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz p1, :cond_0

    const-string p1, "ChildFaceIdentify"

    const-string v0, "onAny: "

    .line 223
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onCreateForAttach()V
    .locals 2

    .line 84
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "ChildFaceIdentify"

    const-string v1, "onCreateForAttach: "

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->onCreated(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onCreated(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 93
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 94
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterHasLifeCycle:Z

    .line 95
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->weakReferenceActivity:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 97
    :cond_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterHasLifeCycle:Z

    .line 99
    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterDestroyed:Z

    .line 100
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  isPresenterHasLifeCycle: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterHasLifeCycle:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  isPresenterDestroyed: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterDestroyed:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChildFaceIdentify"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->init()V

    return-void
.end method

.method public onDestroy(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    if-eqz p1, :cond_0

    .line 197
    invoke-interface {p1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/Lifecycle;->removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterDestroyed:Z

    const/16 p1, 0x17

    .line 200
    iput p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    .line 201
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->setSurface(Landroid/view/Surface;)V

    .line 203
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->stop()V

    .line 204
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    .line 206
    :cond_1
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->weakReferenceActivity:Ljava/lang/ref/WeakReference;

    .line 207
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    .line 208
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    .line 209
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->view:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    .line 210
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_2

    .line 211
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 212
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->countDownTimer:Landroid/os/CountDownTimer;

    .line 215
    :cond_2
    sget-boolean p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz p1, :cond_3

    const-string p1, "ChildFaceIdentify"

    const-string v0, "onDestroy: "

    .line 216
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public onDestroyForAttach()V
    .locals 2

    .line 188
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "ChildFaceIdentify"

    const-string v1, "onDestroyForAttach: "

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->onDestroy(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onPause(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 157
    sget-boolean p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    const/16 v0, 0x12

    if-eqz p1, :cond_0

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ChildFaceIdentify"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    if-ne p1, v0, :cond_0

    const-string p1, "onPause:  \u5f53\u524d\u6b63\u5728\u8bc6\u522b\u4e2d\u88ab\u5173\u95ed"

    .line 160
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->setSurface(Landroid/view/Surface;)V

    .line 169
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->stop()V

    .line 172
    :cond_2
    iget p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    if-ne p1, v0, :cond_3

    const/16 p1, 0x16

    .line 173
    iput p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    :cond_3
    return-void
.end method

.method public onPauseForAttach()V
    .locals 2

    .line 149
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "ChildFaceIdentify"

    const-string v1, "onPauseForAttach: "

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->onPause(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onResume(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 8
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 125
    sget-boolean p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    const-string v0, "ChildFaceIdentify"

    if-eqz p1, :cond_0

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: currentStatus  : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    const/16 v1, 0x15

    const/16 v2, 0x18

    const/16 v3, 0x14

    const/16 v4, 0x12

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->retryIdentify()V

    .line 144
    iput v4, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    return-void

    .line 134
    :cond_2
    :goto_0
    sget-boolean p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz p1, :cond_8

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume: \u672a\u521d\u59cb\u5316 "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume: \u5df2\u7ecf\u5f00\u59cb "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    if-ne v5, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume: \u5df2\u7ecf\u8bc6\u522b\u6210\u529f "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    if-ne v4, v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume: \u4e0a\u4e00\u6b21\u8bc6\u522b\u8d85\u65f6 "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    if-ne v3, v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: \u5df2\u7ecf\u5931\u8d25 "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    if-ne v2, v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public onResumeForAttach()V
    .locals 2

    .line 117
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "ChildFaceIdentify"

    const-string v1, "onResumeForAttach: "

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->onResume(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onStart(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 109
    sget-boolean p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz p1, :cond_0

    const-string p1, "ChildFaceIdentify"

    const-string v0, "onStart: "

    .line 110
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStop(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 180
    sget-boolean p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz p1, :cond_0

    const-string p1, "ChildFaceIdentify"

    const-string v0, "onStop: "

    .line 181
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTTSPlayEngineCalled(ILjava/lang/String;)V
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterHasLifeCycle:Z

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->weakReferenceActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    if-nez v0, :cond_3

    :cond_1
    return-void

    .line 430
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterDestroyed:Z

    if-eqz v0, :cond_3

    return-void

    .line 434
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;->onTTSPlayEngineCalled(ILjava/lang/String;)V

    return-void
.end method

.method public retryIdentify()V
    .locals 3

    .line 380
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    const-string v1, "ChildFaceIdentify"

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryIdenity: debugMode  identifyCount"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->identifyCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " currentStatus"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_2

    .line 384
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz v0, :cond_1

    const-string v0, "retryIdenity: \u4f60\u5df2\u7ecf\u6210\u529f\u4e86!"

    .line 385
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 389
    :cond_2
    iget v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->identifyCount:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_4

    .line 390
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz v0, :cond_3

    const-string v0, "retryIdenity: \u5f53\u524d\u5df2\u7ecf\u8d85\u8fc7\u4e09\u6b21\u4e86,\u8bf7\u4e0d\u8981\u518d\u8bd5\u4e86!"

    .line 391
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 396
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->startFaceIdentify()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View;)V
    .locals 2

    .line 401
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterHasLifeCycle:Z

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->weakReferenceActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    if-nez v0, :cond_3

    :cond_1
    return-void

    .line 407
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterDestroyed:Z

    if-eqz v0, :cond_3

    return-void

    .line 411
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alibaba/ailabs/genie/widget/R$id;->tv_cancel:I

    if-ne v0, v1, :cond_4

    .line 412
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;->onCancelViewClicked(Landroid/view/View;)V

    goto :goto_1

    .line 413
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alibaba/ailabs/genie/widget/R$id;->tv_switch_to_password:I

    if-ne v0, v1, :cond_5

    .line 414
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;->onSwitchPasswordViewClicked(Landroid/view/View;)V

    goto :goto_1

    .line 415
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->iv_anim_cover:I

    if-ne p1, v0, :cond_6

    .line 416
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->retryIdentify()V

    :cond_6
    :goto_1
    return-void
.end method

.method public startFaceIdentify()V
    .locals 3

    .line 351
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz v0, :cond_1

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFaceIdentify: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    if-nez v1, :cond_0

    const-string v1, "mChildFaceClient is null"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildFaceIdentify"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterHasLifeCycle:Z

    if-eqz v0, :cond_4

    .line 355
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->weakReferenceActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 356
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    if-nez v0, :cond_5

    :cond_3
    return-void

    .line 360
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->isPresenterDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    .line 364
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    if-nez v0, :cond_6

    .line 365
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->initChildFaceClient()V

    goto :goto_2

    .line 367
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->view:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 368
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->view:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->setSurface(Landroid/view/Surface;)V

    .line 369
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->setChildFace(Z)V

    .line 371
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->start()V

    .line 372
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->beginCountDownTimer()V

    :goto_2
    const/16 v0, 0x12

    .line 374
    iput v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->currentStatus:I

    const/4 v0, 0x0

    .line 375
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->hasNotifiedCurrentIsChild:Z

    return-void
.end method
