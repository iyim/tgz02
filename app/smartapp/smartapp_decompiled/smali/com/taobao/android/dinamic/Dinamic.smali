.class public final Lcom/taobao/android/dinamic/Dinamic;
.super Ljava/lang/Object;
.source "Dinamic.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Dinamic"

.field private static dinamicContext:Landroid/content/Context; = null

.field private static init:Z = false

.field private static isDebugable:Z = false

.field private static moduleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamic/ModuleContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamic/Dinamic;->moduleMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 44
    sput-boolean v0, Lcom/taobao/android/dinamic/Dinamic;->init:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static bindData(Landroid/view/View;Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/android/dinamic/view/ViewResult;
    .locals 1

    .line 108
    invoke-static {}, Lcom/taobao/android/dinamic/DViewGenerator;->defaultViewGenerator()Lcom/taobao/android/dinamic/DViewGenerator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamic/DViewGenerator;->bindData(Landroid/view/View;Ljava/lang/Object;)Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p0

    return-object p0
.end method

.method public static bindData(Landroid/view/View;Ljava/lang/Object;)Lcom/taobao/android/dinamic/view/ViewResult;
    .locals 1

    .line 99
    invoke-static {}, Lcom/taobao/android/dinamic/DViewGenerator;->defaultViewGenerator()Lcom/taobao/android/dinamic/DViewGenerator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamic/DViewGenerator;->bindData(Landroid/view/View;Ljava/lang/Object;)Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p0

    return-object p0
.end method

.method public static bindData(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Lcom/taobao/android/dinamic/view/ViewResult;
    .locals 1

    .line 138
    invoke-static {}, Lcom/taobao/android/dinamic/DViewGenerator;->defaultViewGenerator()Lcom/taobao/android/dinamic/DViewGenerator;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/taobao/android/dinamic/DViewGenerator;->bindData(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p0

    return-object p0
.end method

.method public static bindData(Landroid/view/View;Ljava/lang/Object;Z)Lcom/taobao/android/dinamic/view/ViewResult;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    .line 119
    invoke-static {}, Lcom/taobao/android/dinamic/DViewGenerator;->defaultViewGenerator()Lcom/taobao/android/dinamic/DViewGenerator;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/taobao/android/dinamic/DViewGenerator;->bindDataWithRoop(Landroid/view/View;Ljava/lang/Object;)Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p0

    return-object p0

    .line 121
    :cond_0
    invoke-static {}, Lcom/taobao/android/dinamic/DViewGenerator;->defaultViewGenerator()Lcom/taobao/android/dinamic/DViewGenerator;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/taobao/android/dinamic/DViewGenerator;->bindData(Landroid/view/View;Ljava/lang/Object;)Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p0

    return-object p0
.end method

.method public static bindDataWithRoop(Landroid/view/View;Ljava/lang/Object;)Lcom/taobao/android/dinamic/view/ViewResult;
    .locals 1

    .line 129
    invoke-static {}, Lcom/taobao/android/dinamic/DViewGenerator;->defaultViewGenerator()Lcom/taobao/android/dinamic/DViewGenerator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamic/DViewGenerator;->bindDataWithRoop(Landroid/view/View;Ljava/lang/Object;)Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p0

    return-object p0
.end method

.method public static clearLruCache(Ljava/lang/String;)V
    .locals 1

    .line 293
    sget-object v0, Lcom/taobao/android/dinamic/Dinamic;->moduleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/view/ViewResult;
    .locals 1

    .line 89
    invoke-static {}, Lcom/taobao/android/dinamic/DViewGenerator;->defaultViewGenerator()Lcom/taobao/android/dinamic/DViewGenerator;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/taobao/android/dinamic/DViewGenerator;->createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p0

    return-object p0
.end method

.method public static downloadTemplates(Ljava/util/List;Lcom/taobao/android/dinamic/tempate/DinamicTemplateDownloaderCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamic/tempate/DinamicTemplate;",
            ">;",
            "Lcom/taobao/android/dinamic/tempate/DinamicTemplateDownloaderCallback;",
            ")V"
        }
    .end annotation

    .line 276
    invoke-static {}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->defaultTemplateManager()Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->downloadTemplates(Ljava/util/List;Lcom/taobao/android/dinamic/tempate/DinamicTemplateDownloaderCallback;)V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 280
    sget-object v0, Lcom/taobao/android/dinamic/Dinamic;->dinamicContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getEventHandler(Ljava/lang/String;)Lcom/taobao/android/dinamic/dinamic/DinamicEventHandler;
    .locals 0

    .line 204
    invoke-static {p0}, Lcom/taobao/android/dinamic/DinamicViewHelper;->getEventHandler(Ljava/lang/String;)Lcom/taobao/android/dinamic/dinamic/DinamicEventHandler;

    move-result-object p0

    return-object p0
.end method

.method public static getModuleContainer(Ljava/lang/String;)Lcom/taobao/android/dinamic/ModuleContainer;
    .locals 2

    .line 71
    sget-object v0, Lcom/taobao/android/dinamic/Dinamic;->moduleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/taobao/android/dinamic/Dinamic;->moduleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/android/dinamic/ModuleContainer;

    return-object p0

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/taobao/android/dinamic/ModuleContainer;->build(Ljava/lang/String;)Lcom/taobao/android/dinamic/ModuleContainer;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/taobao/android/dinamic/Dinamic;->moduleMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getViewConstructor(Ljava/lang/String;)Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;
    .locals 0

    .line 200
    invoke-static {p0}, Lcom/taobao/android/dinamic/DinamicViewHelper;->getViewConstructor(Ljava/lang/String;)Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 1

    .line 54
    sget-boolean v0, Lcom/taobao/android/dinamic/Dinamic;->init:Z

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    sput-boolean p1, Lcom/taobao/android/dinamic/Dinamic;->isDebugable:Z

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/taobao/android/dinamic/Dinamic;->dinamicContext:Landroid/content/Context;

    .line 62
    sget-object p0, Lcom/taobao/android/dinamic/Dinamic;->moduleMap:Ljava/util/Map;

    const-string p1, "default"

    invoke-static {p1}, Lcom/taobao/android/dinamic/ModuleContainer;->build(Ljava/lang/String;)Lcom/taobao/android/dinamic/ModuleContainer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "monitor"

    .line 65
    invoke-static {p0}, Lcom/taobao/android/dinamic/log/DinamicLogThread;->init(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 67
    sput-boolean p0, Lcom/taobao/android/dinamic/Dinamic;->init:Z

    return-void
.end method

.method public static isDebugable()Z
    .locals 1

    .line 81
    sget-boolean v0, Lcom/taobao/android/dinamic/Dinamic;->isDebugable:Z

    return v0
.end method

.method public static processWindowChanged(Z)V
    .locals 4

    .line 303
    :try_start_0
    invoke-static {}, Lcom/taobao/android/dinamic/property/ScreenTool;->checkScreenWidthChanged()Z

    move-result v0

    .line 304
    invoke-static {}, Lcom/taobao/android/dinamic/Dinamic;->isDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Dinamic"

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dinamic processWindowChanged checkRet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    if-eqz p0, :cond_2

    .line 308
    :cond_1
    invoke-static {}, Lcom/taobao/android/dinamic/property/ScreenTool;->forceResetScreenSize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 311
    invoke-static {}, Lcom/taobao/android/dinamic/Dinamic;->isDebugable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static registeEventHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamic/DRegisterCenter;->registerEventHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V

    return-void
.end method

.method public static registeHttpLoader(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/android/dinamic/DRegisterCenter;->registerHttpLoader(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;)V

    return-void
.end method

.method public static registeLogger(Lcom/taobao/android/dinamic/log/IDinamicLog;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registeView(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamic/DRegisterCenter;->registerViewConstructor(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V

    return-void
.end method

.method public static registerEventHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .line 196
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamic/DRegisterCenter;->registerEventHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V

    return-void
.end method

.method public static registerHttpLoader(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;)V
    .locals 1

    .line 248
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/android/dinamic/DRegisterCenter;->registerHttpLoader(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;)V

    return-void
.end method

.method public static registerLogger(Lcom/taobao/android/dinamic/log/IDinamicLog;)V
    .locals 1

    .line 265
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/android/dinamic/DRegisterCenter;->registerLogger(Lcom/taobao/android/dinamic/log/IDinamicLog;)V

    return-void
.end method

.method public static registerParser(Ljava/lang/String;Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .line 223
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamic/DRegisterCenter;->registerDataParser(Ljava/lang/String;Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;)V

    return-void
.end method

.method public static registerView(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .line 168
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamic/DRegisterCenter;->registerViewConstructor(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V

    return-void
.end method

.method public static setDinamicContext(Landroid/content/Context;)V
    .locals 0

    .line 284
    sput-object p0, Lcom/taobao/android/dinamic/Dinamic;->dinamicContext:Landroid/content/Context;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static unregisteEventHandler(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static unregisteView(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static unregisterEventHandler(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static unregisterParser(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static unregisterView(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
