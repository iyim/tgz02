.class public Lcom/taobao/android/ultron/common/utils/UnifyLog;
.super Ljava/lang/Object;
.source "UnifyLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/ultron/common/utils/UnifyLog$OutputLogRunnable;,
        Lcom/taobao/android/ultron/common/utils/UnifyLog$LogCallback;
    }
.end annotation


# static fields
.field public static final KEY_USE_ANDROID_LOG:Ljava/lang/String; = "useAndroidLog"

.field private static logInterface:Lcom/taobao/android/AliLogInterface; = null

.field public static sBizName:Ljava/lang/String; = null

.field public static sDefaultBizName:Ljava/lang/String; = "default"

.field public static sDefaultLogBizNamePre:Ljava/lang/String; = "[new_ultron]"

.field private static sLogBizNameStr:Ljava/lang/String;

.field private static sLogCallbackMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/ultron/common/utils/UnifyLog$LogCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static sUseAndroidLogForTest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sDefaultBizName:Ljava/lang/String;

    sput-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sBizName:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sDefaultLogBizNamePre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sBizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sLogBizNameStr:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/taobao/android/AliLogServiceFetcher;->getLogService()Lcom/taobao/android/AliLogInterface;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->logInterface:Lcom/taobao/android/AliLogInterface;

    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sUseAndroidLogForTest:Z

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sLogCallbackMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sLogBizNameStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/taobao/android/AliLogInterface;
    .locals 1

    .line 21
    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->logInterface:Lcom/taobao/android/AliLogInterface;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->notityLogCallback(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addLogCallback(Ljava/lang/String;Lcom/taobao/android/ultron/common/utils/UnifyLog$LogCallback;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sLogCallbackMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sLogCallbackMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sput-object p0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sBizName:Ljava/lang/String;

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sDefaultLogBizNamePre:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sBizName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sLogBizNameStr:Ljava/lang/String;

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 99
    sget-boolean v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sUseAndroidLogForTest:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->getLog(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/taobao/android/ultron/common/utils/UnifyLog$3;

    invoke-direct {v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog$3;-><init>()V

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->printLog(Ljava/lang/String;Lcom/taobao/android/ultron/common/utils/UnifyLog$OutputLogRunnable;)V

    .line 107
    :cond_0
    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->logInterface:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_1

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 110
    :cond_1
    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->getLog(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/taobao/android/ultron/common/utils/UnifyLog$4;

    invoke-direct {p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog$4;-><init>()V

    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->printLog(Ljava/lang/String;Lcom/taobao/android/ultron/common/utils/UnifyLog$OutputLogRunnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 141
    sget-boolean v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sUseAndroidLogForTest:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->getLog(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/taobao/android/ultron/common/utils/UnifyLog$7;

    invoke-direct {v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog$7;-><init>()V

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->printLog(Ljava/lang/String;Lcom/taobao/android/ultron/common/utils/UnifyLog$OutputLogRunnable;)V

    .line 150
    :cond_0
    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->logInterface:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_1

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 153
    :cond_1
    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->getLog(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/taobao/android/ultron/common/utils/UnifyLog$8;

    invoke-direct {p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog$8;-><init>()V

    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->printLog(Ljava/lang/String;Lcom/taobao/android/ultron/common/utils/UnifyLog$OutputLogRunnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static varargs getLog(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 192
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    if-nez v1, :cond_1

    .line 194
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    const-string v2, " |"

    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, " "

    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 120
    sget-boolean v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sUseAndroidLogForTest:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->getLog(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/taobao/android/ultron/common/utils/UnifyLog$5;

    invoke-direct {v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog$5;-><init>()V

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->printLog(Ljava/lang/String;Lcom/taobao/android/ultron/common/utils/UnifyLog$OutputLogRunnable;)V

    .line 128
    :cond_0
    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->logInterface:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_1

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 131
    :cond_1
    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->getLog(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/taobao/android/ultron/common/utils/UnifyLog$6;

    invoke-direct {p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog$6;-><init>()V

    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->printLog(Ljava/lang/String;Lcom/taobao/android/ultron/common/utils/UnifyLog$OutputLogRunnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static notityLogCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 57
    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sLogCallbackMap:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sBizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sLogCallbackMap:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sBizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/ultron/common/utils/UnifyLog$LogCallback;

    invoke-interface {v0, p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog$LogCallback;->onLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static printLog(Ljava/lang/String;Lcom/taobao/android/ultron/common/utils/UnifyLog$OutputLogRunnable;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v2, v0, 0xc00

    if-gt v1, v2, :cond_1

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----- log split -----\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_2
    invoke-interface {p1, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog$OutputLogRunnable;->run(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static processSwitch(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "useAndroidLog"

    .line 212
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 216
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sUseAndroidLogForTest:Z

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f00\u5173\u72b6\u6001: useAndroidLog is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sUseAndroidLogForTest:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static removeLogCallback(Ljava/lang/String;)V
    .locals 2

    .line 46
    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sLogCallbackMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object p0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sLogCallbackMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 48
    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sDefaultBizName:Ljava/lang/String;

    .line 49
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_0
    sput-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sBizName:Ljava/lang/String;

    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sDefaultLogBizNamePre:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sBizName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sLogBizNameStr:Ljava/lang/String;

    return-void
.end method

.method public static setBizName(Ljava/lang/String;)V
    .locals 4

    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "["

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v1, "]"

    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 73
    :cond_2
    sput-object p0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sBizName:Ljava/lang/String;

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sDefaultLogBizNamePre:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sBizName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sLogBizNameStr:Ljava/lang/String;

    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 78
    sget-boolean v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->sUseAndroidLogForTest:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->getLog(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/taobao/android/ultron/common/utils/UnifyLog$1;

    invoke-direct {v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog$1;-><init>()V

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->printLog(Ljava/lang/String;Lcom/taobao/android/ultron/common/utils/UnifyLog$OutputLogRunnable;)V

    .line 86
    :cond_0
    sget-object v0, Lcom/taobao/android/ultron/common/utils/UnifyLog;->logInterface:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_1

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 89
    :cond_1
    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->getLog(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/taobao/android/ultron/common/utils/UnifyLog$2;

    invoke-direct {p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog$2;-><init>()V

    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->printLog(Ljava/lang/String;Lcom/taobao/android/ultron/common/utils/UnifyLog$OutputLogRunnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
