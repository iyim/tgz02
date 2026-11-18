.class Lcom/taobao/android/dinamic/DinamicViewHelper;
.super Ljava/lang/Object;
.source "DinamicViewHelper.java"


# static fields
.field private static eventHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static viewConstructors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->eventHandlers:Ljava/util/Map;

    .line 45
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    new-instance v1, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;-><init>()V

    const-string v2, "DView"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    new-instance v1, Lcom/taobao/android/dinamic/constructor/DTextViewConstructor;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/constructor/DTextViewConstructor;-><init>()V

    const-string v2, "DTextView"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    new-instance v1, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/constructor/DImageViewConstructor;-><init>()V

    const-string v2, "DImageView"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    new-instance v1, Lcom/taobao/android/dinamic/constructor/DFrameLayoutConstructor;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/constructor/DFrameLayoutConstructor;-><init>()V

    const-string v2, "DFrameLayout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    new-instance v1, Lcom/taobao/android/dinamic/constructor/DLinearLayoutConstructor;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/constructor/DLinearLayoutConstructor;-><init>()V

    const-string v2, "DLinearLayout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    new-instance v1, Lcom/taobao/android/dinamic/constructor/DHorizontalScrollLayoutConstructor;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/constructor/DHorizontalScrollLayoutConstructor;-><init>()V

    const-string v2, "DHorizontalScrollLayout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    new-instance v1, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;-><init>()V

    const-string v2, "DCountDownTimerView"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    new-instance v1, Lcom/taobao/android/dinamic/constructor/DLoopLinearLayoutConstructor;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/constructor/DLoopLinearLayoutConstructor;-><init>()V

    const-string v2, "DLoopLinearLayout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    new-instance v1, Lcom/taobao/android/dinamic/constructor/DTextInputConstructor;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/constructor/DTextInputConstructor;-><init>()V

    const-string v2, "DTextInput"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    new-instance v1, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor;-><init>()V

    const-string v2, "DCheckBox"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    new-instance v1, Lcom/taobao/android/dinamic/constructor/DSwitchConstructor;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/constructor/DSwitchConstructor;-><init>()V

    const-string v2, "DSwitch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static getEventHandler(Ljava/lang/String;)Lcom/taobao/android/dinamic/dinamic/DinamicEventHandler;
    .locals 1

    .line 112
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->eventHandlers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/android/dinamic/dinamic/DinamicEventHandler;

    return-object p0
.end method

.method static getViewConstructor(Ljava/lang/String;)Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;
    .locals 1

    .line 108
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;

    return-object p0
.end method

.method static registerEventHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .line 83
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 88
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->eventHandlers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->eventHandlers:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 89
    :cond_0
    new-instance p1, Lcom/taobao/android/dinamic/exception/DinamicException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerEventHandler failed, eventHander already register by current identify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/taobao/android/dinamic/exception/DinamicException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_1
    new-instance p0, Lcom/taobao/android/dinamic/exception/DinamicException;

    const-string/jumbo p1, "registerEventHandler failed, eventIdentify or handler is null"

    invoke-direct {p0, p1}, Lcom/taobao/android/dinamic/exception/DinamicException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static registerReplaceEventHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 104
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->eventHandlers:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 100
    :cond_0
    new-instance p0, Lcom/taobao/android/dinamic/exception/DinamicException;

    const-string/jumbo p1, "registerEventHandler failed, eventIdentify or handler is null"

    invoke-direct {p0, p1}, Lcom/taobao/android/dinamic/exception/DinamicException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static registerReplaceViewConstructor(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 78
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 75
    :cond_0
    new-instance p0, Lcom/taobao/android/dinamic/exception/DinamicException;

    const-string/jumbo p1, "viewIdentify or assistant is null"

    invoke-direct {p0, p1}, Lcom/taobao/android/dinamic/exception/DinamicException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static registerViewConstructor(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 64
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/taobao/android/dinamic/DinamicViewHelper;->viewConstructors:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 65
    :cond_0
    new-instance p1, Lcom/taobao/android/dinamic/exception/DinamicException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assistant already registed by current identify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/taobao/android/dinamic/exception/DinamicException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    new-instance p0, Lcom/taobao/android/dinamic/exception/DinamicException;

    const-string/jumbo p1, "viewIdentify or assistant is null"

    invoke-direct {p0, p1}, Lcom/taobao/android/dinamic/exception/DinamicException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
