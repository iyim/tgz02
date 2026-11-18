.class Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$InstanceHolder;
.super Ljava/lang/Object;
.source "AnimationConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field static sInstance:Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 294
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;-><init>(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$InstanceHolder;->sInstance:Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
