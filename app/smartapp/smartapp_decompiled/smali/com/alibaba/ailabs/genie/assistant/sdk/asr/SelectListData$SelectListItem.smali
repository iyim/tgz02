.class public Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;
.super Ljava/lang/Object;
.source "SelectListData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectListItem"
.end annotation


# instance fields
.field private selectKey:Ljava/lang/String;

.field private selectValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->selectValueList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->selectKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->selectValueList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addSelectValue(Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->selectValueList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSelectValue(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->selectValueList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setSelectKey(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->selectKey:Ljava/lang/String;

    return-void
.end method
