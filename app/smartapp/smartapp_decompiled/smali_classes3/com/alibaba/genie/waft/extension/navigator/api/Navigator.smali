.class public final Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;
.super Ljava/lang/Object;
.source "Navigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/waft/extension/navigator/api/Navigator$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Navigator"

.field private static volatile hasInit:Z = false


# instance fields
.field private application:Landroid/app/Application;

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/waft/extension/navigator/api/interceptor/Interceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;->interceptors:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/genie/waft/extension/navigator/api/Navigator$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 60
    sget-boolean v0, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;->hasInit:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator$Holder;->access$000()Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must invoke init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    sget-boolean v0, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;->hasInit:Z

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator$Holder;->access$000()Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;

    move-result-object v0

    iput-object p0, v0, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;->application:Landroid/app/Application;

    const/4 p0, 0x1

    .line 34
    sput-boolean p0, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;->hasInit:Z

    :cond_0
    return-void
.end method

.method public static setLogger(Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;)V
    .locals 0
    .param p0    # Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-static {p0}, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerFactory;->setLogger(Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public addInterceptor(Lcom/alibaba/genie/waft/extension/navigator/api/interceptor/Interceptor;)V
    .locals 1
    .param p1    # Lcom/alibaba/genie/waft/extension/navigator/api/interceptor/Interceptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    iget-object v0, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public build()Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;
    .locals 1

    .line 71
    new-instance v0, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;

    invoke-direct {v0}, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;-><init>()V

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;->application:Landroid/app/Application;

    return-object v0
.end method

.method public navigation(Landroid/content/Context;Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;Lcom/alibaba/genie/waft/extension/navigator/api/callback/NavigationCallback;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/genie/waft/extension/navigator/api/callback/NavigationCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Navigator"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/waft/extension/navigator/api/interceptor/Interceptor;

    .line 76
    invoke-interface {v1, p1, p2}, Lcom/alibaba/genie/waft/extension/navigator/api/interceptor/Interceptor;->handleRoute(Landroid/content/Context;Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-static {}, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerFactory;->getLogger()Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "interceptor "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " handle postcard"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    invoke-virtual {p2}, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.VIEW"

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->getAction()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p2}, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 85
    invoke-virtual {p2}, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 87
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {p2}, Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 90
    :cond_4
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_5

    const/high16 v1, 0x10000000

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 97
    :cond_6
    invoke-static {}, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerFactory;->getLogger()Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not find activity by postcard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_7

    .line 99
    invoke-interface {p3, p2}, Lcom/alibaba/genie/waft/extension/navigator/api/callback/NavigationCallback;->onLost(Lcom/alibaba/genie/waft/extension/navigator/api/Postcard;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public removeInterceptor(Lcom/alibaba/genie/waft/extension/navigator/api/interceptor/Interceptor;)V
    .locals 1
    .param p1    # Lcom/alibaba/genie/waft/extension/navigator/api/interceptor/Interceptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    iget-object v0, p0, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
