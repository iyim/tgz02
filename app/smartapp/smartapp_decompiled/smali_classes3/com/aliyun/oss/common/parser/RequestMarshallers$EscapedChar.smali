.class final enum Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;
.super Ljava/lang/Enum;
.source "RequestMarshallers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/common/parser/RequestMarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EscapedChar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

.field public static final enum AMP:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

.field public static final enum GT:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

.field public static final enum LT:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

.field public static final enum NEWLINE:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

.field public static final enum QUOT:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

.field public static final enum RETURN:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

.field public static final enum SPACE:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

.field public static final enum TAB:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;


# instance fields
.field private final escapedChar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 811
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    const/4 v1, 0x0

    const-string v2, "RETURN"

    const-string v3, "&#x000D;"

    invoke-direct {v0, v2, v1, v3}, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->RETURN:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    .line 814
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    const/4 v2, 0x1

    const-string v3, "NEWLINE"

    const-string v4, "&#x000A;"

    invoke-direct {v0, v3, v2, v4}, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->NEWLINE:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    .line 817
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    const/4 v3, 0x2

    const-string v4, "SPACE"

    const-string v5, "&#x0020;"

    invoke-direct {v0, v4, v3, v5}, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->SPACE:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    .line 820
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    const/4 v4, 0x3

    const-string v5, "TAB"

    const-string v6, "&#x0009;"

    invoke-direct {v0, v5, v4, v6}, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->TAB:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    .line 823
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    const/4 v5, 0x4

    const-string v6, "QUOT"

    const-string v7, "&quot;"

    invoke-direct {v0, v6, v5, v7}, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->QUOT:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    .line 826
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    const/4 v6, 0x5

    const-string v7, "AMP"

    const-string v8, "&amp;"

    invoke-direct {v0, v7, v6, v8}, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->AMP:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    .line 829
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    const/4 v7, 0x6

    const-string v8, "LT"

    const-string v9, "&lt;"

    invoke-direct {v0, v8, v7, v9}, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->LT:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    .line 832
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    const/4 v8, 0x7

    const-string v9, "GT"

    const-string v10, "&gt;"

    invoke-direct {v0, v9, v8, v10}, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->GT:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    const/16 v0, 0x8

    .line 809
    new-array v0, v0, [Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    sget-object v9, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->RETURN:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    aput-object v9, v0, v1

    sget-object v1, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->NEWLINE:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->SPACE:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->TAB:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->QUOT:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->AMP:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->LT:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->GT:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    aput-object v1, v0, v8

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->$VALUES:[Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

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

    .line 836
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 837
    iput-object p3, p0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->escapedChar:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;
    .locals 1

    .line 809
    const-class v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;
    .locals 1

    .line 809
    sget-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->$VALUES:[Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    invoke-virtual {v0}, [Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->escapedChar:Ljava/lang/String;

    return-object v0
.end method
