.class public Lcom/taobao/android/dinamic/DRegisterCenter;
.super Ljava/lang/Object;
.source "DRegisterCenter.java"


# static fields
.field private static final instance:Lcom/taobao/android/dinamic/DRegisterCenter;


# instance fields
.field private appMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

.field private dinamicPerformMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;

.field private dxWebImageInterface:Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$DXWebImageInterface;

.field private httpLoader:Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;

.field private monitor:Lcom/taobao/android/dinamic/dinamic/AbsDinamicMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/taobao/android/dinamic/DRegisterCenter;

    invoke-direct {v0}, Lcom/taobao/android/dinamic/DRegisterCenter;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamic/DRegisterCenter;->instance:Lcom/taobao/android/dinamic/DRegisterCenter;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;
    .locals 1

    .line 51
    sget-object v0, Lcom/taobao/android/dinamic/DRegisterCenter;->instance:Lcom/taobao/android/dinamic/DRegisterCenter;

    return-object v0
.end method


# virtual methods
.method public getAppMonitor()Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/taobao/android/dinamic/DRegisterCenter;->appMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    return-object v0
.end method

.method public getDxWebImageInterface()Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$DXWebImageInterface;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/taobao/android/dinamic/DRegisterCenter;->dxWebImageInterface:Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$DXWebImageInterface;

    return-object v0
.end method

.method public getHttpLoader()Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/taobao/android/dinamic/DRegisterCenter;->httpLoader:Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;

    return-object v0
.end method

.method public getMonitor()Lcom/taobao/android/dinamic/dinamic/AbsDinamicMonitor;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/taobao/android/dinamic/DRegisterCenter;->monitor:Lcom/taobao/android/dinamic/dinamic/AbsDinamicMonitor;

    return-object v0
.end method

.method public getPerformMonitor()Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/taobao/android/dinamic/DRegisterCenter;->dinamicPerformMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;

    return-object v0
.end method

.method public registerAppMonitor(Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/taobao/android/dinamic/DRegisterCenter;->dinamicPerformMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;-><init>(Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;)V

    iput-object v0, p0, Lcom/taobao/android/dinamic/DRegisterCenter;->dinamicPerformMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;

    .line 206
    :cond_0
    iput-object p1, p0, Lcom/taobao/android/dinamic/DRegisterCenter;->appMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    return-void
.end method

.method public registerDataParser(Ljava/lang/String;Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .line 61
    invoke-static {p1, p2}, Lcom/taobao/android/dinamic/expression/parser/DinamicDataParserFactory;->registerParser(Ljava/lang/String;Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public registerDataParser(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    const-string v0, "detail"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "tenary"

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "strcat"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "xtrim"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "equals"

    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    :cond_0
    invoke-static {p2, p3}, Lcom/taobao/android/dinamic/expression/parser/DinamicDataParserFactory;->registerReplaceParser(Ljava/lang/String;Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;)V

    return-void

    .line 104
    :cond_1
    invoke-static {p2, p3}, Lcom/taobao/android/dinamic/expression/parser/DinamicDataParserFactory;->registerParser(Ljava/lang/String;Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;)V

    return-void
.end method

.method public registerEventHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .line 66
    invoke-static {p1, p2}, Lcom/taobao/android/dinamic/DinamicViewHelper;->registerEventHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public registerEventHandler(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    const-string v0, "detail"

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p1, "xTap"

    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "xCopy"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 111
    :cond_0
    invoke-static {p2, p3}, Lcom/taobao/android/dinamic/DinamicViewHelper;->registerReplaceEventHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V

    return-void

    :cond_1
    const-string v0, "mcCart"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "mcAddCart"

    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    invoke-static {p2, p3}, Lcom/taobao/android/dinamic/DinamicViewHelper;->registerReplaceEventHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V

    return-void

    .line 121
    :cond_2
    invoke-static {p2, p3}, Lcom/taobao/android/dinamic/DinamicViewHelper;->registerEventHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V

    return-void
.end method

.method public registerHttpLoader(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/taobao/android/dinamic/DRegisterCenter;->httpLoader:Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 126
    new-array p1, p1, [Ljava/lang/String;

    const-string/jumbo v0, "registerHttpLoader failed, loader is exist"

    invoke-static {v0, p1}, Lcom/taobao/android/dinamic/log/DinamicLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/taobao/android/dinamic/DRegisterCenter;->httpLoader:Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;

    .line 135
    invoke-static {}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->defaultTemplateManager()Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->registerHttpLoader(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;)V

    return-void
.end method

.method public registerImageInterface(Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$DXWebImageInterface;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/taobao/android/dinamic/DRegisterCenter;->dxWebImageInterface:Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$DXWebImageInterface;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 180
    new-array p1, p1, [Ljava/lang/String;

    const-string/jumbo v0, "registerImageInterface failed, imageInterface is exist"

    invoke-static {v0, p1}, Lcom/taobao/android/dinamic/log/DinamicLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/taobao/android/dinamic/DRegisterCenter;->dxWebImageInterface:Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$DXWebImageInterface;

    const-string v0, "DImageView"

    .line 190
    invoke-static {v0}, Lcom/taobao/android/dinamic/Dinamic;->getViewConstructor(Ljava/lang/String;)Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor;

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor;->setDxWebImageInterface(Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$DXWebImageInterface;)V

    :cond_1
    return-void
.end method

.method public registerLogger(Lcom/taobao/android/dinamic/log/IDinamicLog;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public registerMonitor(Lcom/taobao/android/dinamic/dinamic/AbsDinamicMonitor;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/taobao/android/dinamic/DRegisterCenter;->monitor:Lcom/taobao/android/dinamic/dinamic/AbsDinamicMonitor;

    if-nez v0, :cond_0

    .line 168
    iput-object p1, p0, Lcom/taobao/android/dinamic/DRegisterCenter;->monitor:Lcom/taobao/android/dinamic/dinamic/AbsDinamicMonitor;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 170
    new-array p1, p1, [Ljava/lang/String;

    const-string/jumbo v0, "registerMonitor failed, monitor is exist"

    invoke-static {v0, p1}, Lcom/taobao/android/dinamic/log/DinamicLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public registerRemoteDebugLog(Lcom/taobao/android/dinamic/log/IDinamicRemoteDebugLog;)V
    .locals 1

    .line 153
    sget-object v0, Lcom/taobao/android/dinamic/log/DinamicLog;->iDinamicRemoteDebugLog:Lcom/taobao/android/dinamic/log/IDinamicRemoteDebugLog;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 154
    new-array p1, p1, [Ljava/lang/String;

    const-string/jumbo v0, "registerRemoteDebugLog failed, iDinamicRemoteDebugLog is exist"

    invoke-static {v0, p1}, Lcom/taobao/android/dinamic/log/DinamicLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 158
    :cond_0
    invoke-static {p1}, Lcom/taobao/android/dinamic/log/DinamicLog;->setDinamicRemoteDebugLog(Lcom/taobao/android/dinamic/log/IDinamicRemoteDebugLog;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public registerViewConstructor(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .line 56
    invoke-static {p1, p2}, Lcom/taobao/android/dinamic/DinamicViewHelper;->registerViewConstructor(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public registerViewConstructor(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    const-string v0, "detail"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "XAdaptiveTextView"

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "XCommentTagView"

    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "XSimpleRichText"

    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "XRichText"

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "XWrapTagView"

    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "XRichTextByCoupon"

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "XCategoryCoupon"

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    :cond_0
    invoke-static {p2, p3}, Lcom/taobao/android/dinamic/DinamicViewHelper;->registerReplaceViewConstructor(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V

    return-void

    .line 84
    :cond_1
    invoke-static {p2, p3}, Lcom/taobao/android/dinamic/DinamicViewHelper;->registerViewConstructor(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V

    return-void
.end method
