.class public Lcom/alibaba/ailabs/genie/globalsearch/App;
.super Landroid/app/Application;
.source "App.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field private static final TAG:Ljava/lang/String; = "Application"

.field private static mApp:Lcom/alibaba/ailabs/genie/globalsearch/App;

.field private static volatile mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getApp()Lcom/alibaba/ailabs/genie/globalsearch/App;
    .locals 1

    .line 76
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/App;->mApp:Lcom/alibaba/ailabs/genie/globalsearch/App;

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 72
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/App;->mApplication:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public init(Landroid/app/Application;)V
    .locals 0

    .line 32
    sput-object p1, Lcom/alibaba/ailabs/genie/globalsearch/App;->mApplication:Landroid/app/Application;

    .line 33
    sput-object p0, Lcom/alibaba/ailabs/genie/globalsearch/App;->mApp:Lcom/alibaba/ailabs/genie/globalsearch/App;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onCreate()V
    .locals 0

    .line 38
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onLowMemory()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 46
    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 56
    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->trimMemory(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
