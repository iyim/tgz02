.class public Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;
.super Ljava/lang/Object;
.source "UTMap.java"


# instance fields
.field clickType:Ljava/lang/String;

.field expType:Ljava/lang/String;

.field extendInfo:Ljava/lang/String;

.field groupType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public build()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->groupType:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "card_type"

    .line 30
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->expType:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "exp_type"

    .line 33
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->clickType:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "click_type"

    .line 36
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->extendInfo:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "item_extend"

    .line 39
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public withClickType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->clickType:Ljava/lang/String;

    return-object p0
.end method

.method public withExpType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->expType:Ljava/lang/String;

    return-object p0
.end method

.method public withExtendInfo(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->extendInfo:Ljava/lang/String;

    return-object p0
.end method

.method public withGroupType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->groupType:Ljava/lang/String;

    return-object p0
.end method
