.class public final enum Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;
.super Ljava/lang/Enum;
.source "GlideRoundTransformNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CornerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field public static final enum ALL:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field public static final enum BOTTOM:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field public static final enum BOTTOM_LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field public static final enum BOTTOM_RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field public static final enum DIAGONAL_FROM_TOP_LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field public static final enum DIAGONAL_FROM_TOP_RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field public static final enum LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field public static final enum OTHER_BOTTOM_LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field public static final enum OTHER_BOTTOM_RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field public static final enum OTHER_TOP_LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field public static final enum OTHER_TOP_RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field public static final enum RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field public static final enum TOP:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field public static final enum TOP_LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field public static final enum TOP_RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 28
    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/4 v1, 0x0

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->ALL:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    .line 29
    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/4 v2, 0x1

    const-string v3, "TOP_LEFT"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->TOP_LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/4 v3, 0x2

    const-string v4, "TOP_RIGHT"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->TOP_RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/4 v4, 0x3

    const-string v5, "BOTTOM_LEFT"

    invoke-direct {v0, v5, v4}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->BOTTOM_LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/4 v5, 0x4

    const-string v6, "BOTTOM_RIGHT"

    invoke-direct {v0, v6, v5}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->BOTTOM_RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    .line 30
    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/4 v6, 0x5

    const-string v7, "TOP"

    invoke-direct {v0, v7, v6}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->TOP:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/4 v7, 0x6

    const-string v8, "BOTTOM"

    invoke-direct {v0, v8, v7}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->BOTTOM:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/4 v8, 0x7

    const-string v9, "LEFT"

    invoke-direct {v0, v9, v8}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/16 v9, 0x8

    const-string v10, "RIGHT"

    invoke-direct {v0, v10, v9}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    .line 31
    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/16 v10, 0x9

    const-string v11, "OTHER_TOP_LEFT"

    invoke-direct {v0, v11, v10}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->OTHER_TOP_LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/16 v11, 0xa

    const-string v12, "OTHER_TOP_RIGHT"

    invoke-direct {v0, v12, v11}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->OTHER_TOP_RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/16 v12, 0xb

    const-string v13, "OTHER_BOTTOM_LEFT"

    invoke-direct {v0, v13, v12}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->OTHER_BOTTOM_LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/16 v13, 0xc

    const-string v14, "OTHER_BOTTOM_RIGHT"

    invoke-direct {v0, v14, v13}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->OTHER_BOTTOM_RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    .line 32
    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/16 v14, 0xd

    const-string v15, "DIAGONAL_FROM_TOP_LEFT"

    invoke-direct {v0, v15, v14}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->DIAGONAL_FROM_TOP_LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/16 v15, 0xe

    const-string v14, "DIAGONAL_FROM_TOP_RIGHT"

    invoke-direct {v0, v14, v15}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->DIAGONAL_FROM_TOP_RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/16 v0, 0xf

    .line 27
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    sget-object v14, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->ALL:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    aput-object v14, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->TOP_LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->TOP_RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->BOTTOM_LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->BOTTOM_RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->TOP:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->BOTTOM:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->OTHER_TOP_LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->OTHER_TOP_RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->OTHER_BOTTOM_LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->OTHER_BOTTOM_RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->DIAGONAL_FROM_TOP_LEFT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->DIAGONAL_FROM_TOP_RIGHT:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    aput-object v1, v0, v15

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->$VALUES:[Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;
    .locals 1

    .line 27
    const-class v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;
    .locals 1

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->$VALUES:[Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    return-object v0
.end method
