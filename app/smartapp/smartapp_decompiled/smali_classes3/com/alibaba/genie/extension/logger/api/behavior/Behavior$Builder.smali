.class public Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$Builder;
.super Ljava/lang/Object;
.source "Behavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final behavior:Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;-><init>(Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$1;)V

    iput-object v0, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$Builder;->behavior:Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;

    return-void
.end method


# virtual methods
.method public addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$Builder;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$Builder;->behavior:Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;

    invoke-static {v0}, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;->access$100(Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$Builder;->behavior:Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;

    return-object v0
.end method

.method public setParams(Ljava/util/Map;)Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$Builder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$Builder;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$Builder;->behavior:Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;

    invoke-static {v0, p1}, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;->access$102(Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;Ljava/util/Map;)Ljava/util/Map;

    return-object p0
.end method

.method public setPreViewId(Ljava/lang/String;)Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$Builder;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$Builder;->behavior:Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;

    invoke-static {v0, p1}, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;->access$202(Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setTrackId(Ljava/lang/String;)Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$Builder;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$Builder;->behavior:Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;

    invoke-static {v0, p1}, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;->access$302(Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setViewId(Ljava/lang/String;)Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$Builder;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$Builder;->behavior:Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;

    invoke-static {v0, p1}, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;->access$402(Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
