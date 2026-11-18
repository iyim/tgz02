.class public Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;
.super Ljava/lang/Object;
.source "CustomSubscriberParserModel.java"


# instance fields
.field customMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->customMap:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    return-void
.end method


# virtual methods
.method public addCustomValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->customMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCustomMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->customMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCustomValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->customMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->type:Ljava/lang/String;

    return-void
.end method
