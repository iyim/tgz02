.class public Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;
.super Ljava/lang/Object;
.source "KeyboardManager.java"


# static fields
.field private static keyboardMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;->keyboardMap:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static bindKeyboard(ILcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyboardManager-bindKeyboard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyboardManager::bindKeyboard"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;->keyboardMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getKeyboard(I)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;
    .locals 3

    .line 37
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyboardManager-getKeyboard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyboardManager::getKeyboard"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;->keyboardMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;->keyboardMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isBindKeyboard(I)Z
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;->getKeyboard(I)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static unBindKeyboard(I)V
    .locals 3

    .line 29
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyboardManager-unBindKeyboard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyboardManager::unBindKeyboard"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;->keyboardMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;->keyboardMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
