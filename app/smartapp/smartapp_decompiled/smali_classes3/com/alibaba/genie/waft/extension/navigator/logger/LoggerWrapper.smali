.class Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;
.super Ljava/lang/Object;
.source "LoggerWrapper.java"

# interfaces
.implements Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;


# instance fields
.field private logger:Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;->tag:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;->logger:Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;->logger:Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;->logger:Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;->logger:Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLogger(Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;)V
    .locals 0
    .param p1    # Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    iput-object p1, p0, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;->logger:Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;->logger:Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
