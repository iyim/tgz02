.class public Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;
.super Ljava/lang/Object;
.source "VCallList.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/utils/proguard/IKeepFieldName;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VCallList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;
    .locals 2

    .line 25
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;-><init>()V

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;->mList:Ljava/util/List;

    .line 29
    :try_start_0
    const-class v1, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 34
    :cond_0
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/cmd/model/-$$Lambda$VCallList$GMguef-Y8pTtqap7F_-peE9hmyc;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/-$$Lambda$VCallList$GMguef-Y8pTtqap7F_-peE9hmyc;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 42
    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$fromJson$12(Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->getRetValue()Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;->mList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;->mList:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;->mList:Ljava/util/List;

    return-void
.end method
