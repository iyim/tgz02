.class public Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig;
.super Ljava/lang/Object;
.source "PlayerConfig.java"


# static fields
.field public static PLAYER:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static VIDEO_URI:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig;->PLAYER:Ljava/util/Set;

    .line 31
    new-instance v0, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$2;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$2;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig;->VIDEO_URI:Ljava/util/Set;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
