.class public final Lcom/alibaba/android/bindingx/core/LogProxy;
.super Ljava/lang/Object;
.source "LogProxy.java"


# static fields
.field private static final KEY_DEBUG:Ljava/lang/String; = "debug"

.field public static sEnableLog:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 80
    sget-boolean v0, Lcom/alibaba/android/bindingx/core/LogProxy;->sEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "BindingX"

    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 86
    sget-boolean v0, Lcom/alibaba/android/bindingx/core/LogProxy;->sEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "BindingX"

    .line 87
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 104
    sget-boolean v0, Lcom/alibaba/android/bindingx/core/LogProxy;->sEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "BindingX"

    .line 105
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 110
    sget-boolean v0, Lcom/alibaba/android/bindingx/core/LogProxy;->sEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "BindingX"

    .line 111
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static enableLogIfNeeded(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "debug"

    .line 41
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 46
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 47
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 48
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 49
    nop

    nop

    const-string/jumbo v0, "true"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 52
    :cond_3
    :goto_0
    sput-boolean v0, Lcom/alibaba/android/bindingx/core/LogProxy;->sEnableLog:Z

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 56
    sget-boolean v0, Lcom/alibaba/android/bindingx/core/LogProxy;->sEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "BindingX"

    .line 57
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 62
    sget-boolean v0, Lcom/alibaba/android/bindingx/core/LogProxy;->sEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "BindingX"

    .line 63
    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 68
    sget-boolean v0, Lcom/alibaba/android/bindingx/core/LogProxy;->sEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "BindingX"

    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 74
    sget-boolean v0, Lcom/alibaba/android/bindingx/core/LogProxy;->sEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "BindingX"

    .line 75
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 92
    sget-boolean v0, Lcom/alibaba/android/bindingx/core/LogProxy;->sEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "BindingX"

    .line 93
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 98
    sget-boolean v0, Lcom/alibaba/android/bindingx/core/LogProxy;->sEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "BindingX"

    .line 99
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
