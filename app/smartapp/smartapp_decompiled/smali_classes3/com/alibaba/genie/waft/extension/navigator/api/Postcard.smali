.class public Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;
.super Ljava/lang/Object;
.source "Postcard.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Postcard"


# instance fields
.field private action:Ljava/lang/String;

.field private bundle:Landroid/os/Bundle;

.field private extra:Ljava/lang/Object;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getExtra()Ljava/lang/Object;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->extra:Ljava/lang/Object;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public navigation()V
    .locals 1

    .line 68
    invoke-static {}, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;->getInstance()Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->navigation(Landroid/content/Context;)V

    return-void
.end method

.method public navigation(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->navigation(Landroid/content/Context;Lcom/alibaba/genie/waft/extension/navigator/api/callback/NavigationCallback;)V

    return-void
.end method

.method public navigation(Landroid/content/Context;Lcom/alibaba/genie/waft/extension/navigator/api/callback/NavigationCallback;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/genie/waft/extension/navigator/api/callback/NavigationCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    invoke-static {}, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;->getInstance()Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;->navigation(Landroid/content/Context;Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;Lcom/alibaba/genie/waft/extension/navigator/api/callback/NavigationCallback;)V

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->uri:Landroid/net/Uri;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Postcard{uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->extra:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAction(Ljava/lang/String;)Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    iput-object p1, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->action:Ljava/lang/String;

    return-object p0
.end method

.method public withData(Landroid/net/Uri;)Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public withExtra(Ljava/lang/Object;)Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->extra:Ljava/lang/Object;

    return-object p0
.end method

.method public withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    iget-object v0, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
