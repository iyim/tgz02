.class Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$LocationHolder;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;-><init>(Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$LocationHolder;->sInstance:Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;

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

.method static synthetic access$000()Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;
    .locals 1

    .line 25
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$LocationHolder;->sInstance:Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;

    return-object v0
.end method
