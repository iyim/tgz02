.class public Lcom/alibaba/ailabs/appbox/utils/GuessYouLikeMgr;
.super Ljava/lang/Object;
.source "GuessYouLikeMgr.java"


# static fields
.field private static final ourInstance:Lcom/alibaba/ailabs/appbox/utils/GuessYouLikeMgr;


# instance fields
.field likes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/alibaba/ailabs/appbox/utils/GuessYouLikeMgr;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/utils/GuessYouLikeMgr;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/GuessYouLikeMgr;->ourInstance:Lcom/alibaba/ailabs/appbox/utils/GuessYouLikeMgr;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/GuessYouLikeMgr;->likes:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/appbox/utils/GuessYouLikeMgr;
    .locals 1

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/GuessYouLikeMgr;->ourInstance:Lcom/alibaba/ailabs/appbox/utils/GuessYouLikeMgr;

    return-object v0
.end method
