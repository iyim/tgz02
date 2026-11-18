.class Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;
.super Ljava/lang/Object;
.source "ForbiddenModeManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/data/GenieDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyGenieDataListener"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private forbiddenModeManager:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;",
            ">;"
        }
    .end annotation
.end field

.field private wef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Landroid/content/Context;)V
    .locals 1

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->weakReference:Ljava/lang/ref/WeakReference;

    .line 480
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->wef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->weakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Landroid/content/Context;
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$702(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->wef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->forbiddenModeManager:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    return-object p0
.end method

.method static synthetic access$902(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->forbiddenModeManager:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    return-object p1
.end method


# virtual methods
.method public onUpdate()V
    .locals 2

    const-string v0, "ForbiddenModeManager"

    const-string v1, "GenieDataUtils IDeviceMirrorChanger onUpdate"

    .line 485
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
