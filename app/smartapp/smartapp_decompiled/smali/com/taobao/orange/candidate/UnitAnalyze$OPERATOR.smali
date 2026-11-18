.class final enum Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;
.super Ljava/lang/Enum;
.source "UnitAnalyze.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/orange/candidate/UnitAnalyze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OPERATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

.field public static final enum EQUALS:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

.field public static final enum FUZZY:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

.field public static final enum GREATER:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

.field public static final enum GREATER_EQUALS:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

.field public static final enum LESS:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

.field public static final enum LESS_EQUALS:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

.field public static final enum NOT_EQUALS:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

.field public static final enum NOT_FUZZY:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;


# instance fields
.field private symbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 28
    new-instance v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    const/4 v1, 0x0

    const-string v2, "EQUALS"

    const-string v3, "="

    invoke-direct {v0, v2, v1, v3}, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->EQUALS:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    .line 32
    new-instance v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    const/4 v2, 0x1

    const-string v3, "GREATER_EQUALS"

    const-string v4, ">="

    invoke-direct {v0, v3, v2, v4}, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->GREATER_EQUALS:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    .line 36
    new-instance v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    const/4 v3, 0x2

    const-string v4, "LESS_EQUALS"

    const-string v5, "<="

    invoke-direct {v0, v4, v3, v5}, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->LESS_EQUALS:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    .line 40
    new-instance v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    const/4 v4, 0x3

    const-string v5, "GREATER"

    const-string v6, ">"

    invoke-direct {v0, v5, v4, v6}, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->GREATER:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    .line 44
    new-instance v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    const/4 v5, 0x4

    const-string v6, "LESS"

    const-string v7, "<"

    invoke-direct {v0, v6, v5, v7}, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->LESS:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    .line 48
    new-instance v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    const/4 v6, 0x5

    const-string v7, "NOT_EQUALS"

    const-string v8, "!="

    invoke-direct {v0, v7, v6, v8}, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->NOT_EQUALS:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    .line 52
    new-instance v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    const/4 v7, 0x6

    const-string v8, "FUZZY"

    const-string/jumbo v9, "~="

    invoke-direct {v0, v8, v7, v9}, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->FUZZY:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    .line 56
    new-instance v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    const/4 v8, 0x7

    const-string v9, "NOT_FUZZY"

    const-string v10, "!~"

    invoke-direct {v0, v9, v8, v10}, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->NOT_FUZZY:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    const/16 v0, 0x8

    .line 24
    new-array v0, v0, [Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    sget-object v9, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->EQUALS:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    aput-object v9, v0, v1

    sget-object v1, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->GREATER_EQUALS:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->LESS_EQUALS:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->GREATER:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->LESS:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->NOT_EQUALS:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->FUZZY:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->NOT_FUZZY:Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    aput-object v1, v0, v8

    sput-object v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->$VALUES:[Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->symbol:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;
    .locals 1

    .line 24
    const-class v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    return-object p0
.end method

.method public static values()[Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;
    .locals 1

    .line 24
    sget-object v0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->$VALUES:[Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    invoke-virtual {v0}, [Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;

    return-object v0
.end method


# virtual methods
.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/taobao/orange/candidate/UnitAnalyze$OPERATOR;->symbol:Ljava/lang/String;

    return-object v0
.end method
