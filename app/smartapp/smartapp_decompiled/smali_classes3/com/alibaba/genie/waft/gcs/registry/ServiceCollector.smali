.class public Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;
.super Ljava/lang/Object;
.source "ServiceCollector.java"

# interfaces
.implements Lcom/alibaba/genie/waft/gcs/registry/api/IServiceCollector;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceCollector"


# instance fields
.field private ourServiceMetadataList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->ourServiceMetadataList:Ljava/util/Set;

    const-string v0, "ServiceCollector"

    const-string v1, "ServiceCollector() called"

    .line 31
    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/registry/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 37
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector$Holder;->access$100()Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public collect(Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collect() called with: serviceMetadata = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceCollector"

    invoke-static {v1, v0}, Lcom/alibaba/genie/waft/gcs/registry/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->ourServiceMetadataList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public collect(Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;",
            ">;)V"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collect() called with: serviceMetadataList = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceCollector"

    invoke-static {v1, v0}, Lcom/alibaba/genie/waft/gcs/registry/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->ourServiceMetadataList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public find(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->ourServiceMetadataList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;

    if-nez v1, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->isFreeze()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->getServiceApi()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public freezeWithProcess(Ljava/lang/String;)V
    .locals 3

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->ourServiceMetadataList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;

    if-nez v1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 60
    invoke-virtual {v1, v2}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->setFreeze(Z)Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public unfreezeWithProcess(Ljava/lang/String;)V
    .locals 3

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->ourServiceMetadataList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;

    if-nez v1, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->setFreeze(Z)Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;

    goto :goto_0

    :cond_3
    return-void
.end method
