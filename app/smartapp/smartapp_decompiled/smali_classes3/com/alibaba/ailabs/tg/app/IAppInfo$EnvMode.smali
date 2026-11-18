.class public final enum Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;
.super Ljava/lang/Enum;
.source "IAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/tg/app/IAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnvMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

.field public static final enum DAILY:Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

.field public static final enum ONLINE:Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

.field public static final enum PREPARE:Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

.field public static final enum TEST:Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 17
    new-instance v0, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    const/4 v1, 0x0

    const-string v2, "ONLINE"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;->ONLINE:Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    .line 19
    new-instance v0, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    const/4 v2, 0x1

    const-string v3, "PREPARE"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;->PREPARE:Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    .line 20
    new-instance v0, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    const/4 v3, 0x2

    const-string v4, "TEST"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;->TEST:Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    .line 22
    new-instance v0, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    const/4 v4, 0x3

    const-string v5, "DAILY"

    invoke-direct {v0, v5, v4}, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;->DAILY:Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    const/4 v0, 0x4

    .line 15
    new-array v0, v0, [Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    sget-object v5, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;->ONLINE:Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    aput-object v5, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;->PREPARE:Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;->TEST:Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;->DAILY:Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;->$VALUES:[Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getEnv(Ljava/lang/String;)Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnvMode env is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object p0, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;->PREPARE:Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    return-object p0

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;->valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;
    .locals 1

    .line 15
    const-class v0, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;
    .locals 1

    .line 15
    sget-object v0, Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;->$VALUES:[Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/tg/app/IAppInfo$EnvMode;

    return-object v0
.end method
