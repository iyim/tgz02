.class public final enum Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;
.super Ljava/lang/Enum;
.source "GenieMtopServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

.field public static final enum MAP:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

.field public static final enum NONE:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

.field public static final enum PARAMS:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    const/4 v1, 0x0

    const-string v2, "MAP"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->MAP:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    .line 12
    new-instance v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    const/4 v2, 0x1

    const-string v3, "PARAMS"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->PARAMS:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    .line 13
    new-instance v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    const/4 v3, 0x2

    const-string v4, "NONE"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->NONE:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    sget-object v4, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->MAP:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->PARAMS:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->NONE:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->$VALUES:[Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;
    .locals 1

    .line 10
    const-class v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;
    .locals 1

    .line 10
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->$VALUES:[Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    return-object v0
.end method
