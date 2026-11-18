.class public final enum Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;
.super Ljava/lang/Enum;
.source "DinamicASTNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DinamicASTNodeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

.field public static final enum DinamicASTNodeTypeBranchBlock:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

.field public static final enum DinamicASTNodeTypeConst:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

.field public static final enum DinamicASTNodeTypeMethod:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

.field public static final enum DinamicASTNodeTypeNone:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

.field public static final enum DinamicASTNodeTypeRoot:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

.field public static final enum DinamicASTNodeTypeSerialBlock:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

.field public static final enum DinamicASTNodeTypeVar:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 9
    new-instance v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    const/4 v1, 0x0

    const-string v2, "DinamicASTNodeTypeNone"

    invoke-direct {v0, v2, v1}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeNone:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    .line 10
    new-instance v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    const/4 v2, 0x1

    const-string v3, "DinamicASTNodeTypeRoot"

    invoke-direct {v0, v3, v2}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeRoot:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    .line 11
    new-instance v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    const/4 v3, 0x2

    const-string v4, "DinamicASTNodeTypeMethod"

    invoke-direct {v0, v4, v3}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeMethod:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    .line 12
    new-instance v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    const/4 v4, 0x3

    const-string v5, "DinamicASTNodeTypeVar"

    invoke-direct {v0, v5, v4}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeVar:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    .line 13
    new-instance v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    const/4 v5, 0x4

    const-string v6, "DinamicASTNodeTypeConst"

    invoke-direct {v0, v6, v5}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeConst:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    .line 14
    new-instance v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    const/4 v6, 0x5

    const-string v7, "DinamicASTNodeTypeBranchBlock"

    invoke-direct {v0, v7, v6}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeBranchBlock:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    .line 15
    new-instance v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    const/4 v7, 0x6

    const-string v8, "DinamicASTNodeTypeSerialBlock"

    invoke-direct {v0, v8, v7}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeSerialBlock:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    const/4 v0, 0x7

    .line 8
    new-array v0, v0, [Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    sget-object v8, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeNone:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeRoot:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeMethod:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeVar:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeConst:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeBranchBlock:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeSerialBlock:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->$VALUES:[Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

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

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;
    .locals 1

    .line 8
    const-class v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;
    .locals 1

    .line 8
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->$VALUES:[Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    invoke-virtual {v0}, [Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    return-object v0
.end method
