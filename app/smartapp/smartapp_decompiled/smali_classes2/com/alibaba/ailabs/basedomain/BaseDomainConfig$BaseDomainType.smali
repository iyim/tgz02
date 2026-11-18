.class public final enum Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;
.super Ljava/lang/Enum;
.source "BaseDomainConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/BaseDomainConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BaseDomainType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

.field public static final enum ALARM:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

.field public static final enum AUDIO:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

.field public static final enum DATE_TIME:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

.field public static final enum ENCYCLOPEDIA:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

.field public static final enum NONE:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

.field public static final enum VIDEO:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

.field public static final enum WEATHER:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 10
    new-instance v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->NONE:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    .line 11
    new-instance v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    const/4 v2, 0x1

    const-string v3, "ENCYCLOPEDIA"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->ENCYCLOPEDIA:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    .line 12
    new-instance v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    const/4 v3, 0x2

    const-string v4, "WEATHER"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->WEATHER:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    .line 13
    new-instance v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    const/4 v4, 0x3

    const-string v5, "DATE_TIME"

    invoke-direct {v0, v5, v4}, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->DATE_TIME:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    .line 14
    new-instance v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    const/4 v5, 0x4

    const-string v6, "ALARM"

    invoke-direct {v0, v6, v5}, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->ALARM:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    .line 15
    new-instance v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    const/4 v6, 0x5

    const-string v7, "AUDIO"

    invoke-direct {v0, v7, v6}, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->AUDIO:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    .line 16
    new-instance v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    const/4 v7, 0x6

    const-string v8, "VIDEO"

    invoke-direct {v0, v8, v7}, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->VIDEO:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    const/4 v0, 0x7

    .line 9
    new-array v0, v0, [Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    sget-object v8, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->NONE:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->ENCYCLOPEDIA:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->WEATHER:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->DATE_TIME:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->ALARM:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->AUDIO:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->VIDEO:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->$VALUES:[Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;
    .locals 1

    .line 9
    const-class v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;
    .locals 1

    .line 9
    sget-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->$VALUES:[Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    return-object v0
.end method
