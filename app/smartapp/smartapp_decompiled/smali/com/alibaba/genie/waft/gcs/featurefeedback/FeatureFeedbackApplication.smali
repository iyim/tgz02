.class public Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;
.super Ljava/lang/Object;
.source "FeatureFeedbackApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field public static final COMMON_MESSAGE_TYPE:I = 0x3

.field public static final FEATURE_FEEDBACK_MESSAGE_TYPE:Ljava/lang/String; = "genius.sys.feature.feedback"

.field public static final TAG:Ljava/lang/String; = "FeatureFeedbackApplication"

.field private static final TIME_MILLS_ONE_MINUTE:J = 0xea60L

.field private static mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;->initMessageCenter()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Landroid/app/Application;
    .locals 1

    .line 21
    sget-object v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 31
    sget-object v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method private initMessageCenter()V
    .locals 3

    .line 52
    sget-object v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;

    move-result-object v0

    new-instance v1, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication$2;-><init>(Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;)V

    new-instance v2, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication$3;

    invoke-direct {v2, p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication$3;-><init>(Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;->init(Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;Lcom/alibaba/ailabs/genie/message/client/CallBack;)V

    return-void
.end method

.method private initMessageCenterDelay()V
    .locals 4

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication$1;-><init>(Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 0

    .line 36
    sput-object p1, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;->mApplication:Landroid/app/Application;

    .line 37
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->init(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;->initMessageCenterDelay()V

    return-void
.end method
