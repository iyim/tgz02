.class public final enum Lcom/rich/czlylibary/http/model/HttpMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rich/czlylibary/http/model/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lcom/rich/czlylibary/http/model/HttpMethod;

.field public static final enum GET:Lcom/rich/czlylibary/http/model/HttpMethod;

.field public static final enum HEAD:Lcom/rich/czlylibary/http/model/HttpMethod;

.field public static final enum OPTIONS:Lcom/rich/czlylibary/http/model/HttpMethod;

.field public static final enum PATCH:Lcom/rich/czlylibary/http/model/HttpMethod;

.field public static final enum POST:Lcom/rich/czlylibary/http/model/HttpMethod;

.field public static final enum PUT:Lcom/rich/czlylibary/http/model/HttpMethod;

.field public static final enum TRACE:Lcom/rich/czlylibary/http/model/HttpMethod;

.field private static final synthetic a:[Lcom/rich/czlylibary/http/model/HttpMethod;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/rich/czlylibary/http/model/HttpMethod;

    const/4 v1, 0x0

    const-string v2, "GET"

    invoke-direct {v0, v2, v1, v2}, Lcom/rich/czlylibary/http/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rich/czlylibary/http/model/HttpMethod;->GET:Lcom/rich/czlylibary/http/model/HttpMethod;

    new-instance v0, Lcom/rich/czlylibary/http/model/HttpMethod;

    const/4 v2, 0x1

    const-string v3, "POST"

    invoke-direct {v0, v3, v2, v3}, Lcom/rich/czlylibary/http/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rich/czlylibary/http/model/HttpMethod;->POST:Lcom/rich/czlylibary/http/model/HttpMethod;

    new-instance v0, Lcom/rich/czlylibary/http/model/HttpMethod;

    const/4 v3, 0x2

    const-string v4, "PUT"

    invoke-direct {v0, v4, v3, v4}, Lcom/rich/czlylibary/http/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rich/czlylibary/http/model/HttpMethod;->PUT:Lcom/rich/czlylibary/http/model/HttpMethod;

    new-instance v0, Lcom/rich/czlylibary/http/model/HttpMethod;

    const/4 v4, 0x3

    const-string v5, "DELETE"

    invoke-direct {v0, v5, v4, v5}, Lcom/rich/czlylibary/http/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rich/czlylibary/http/model/HttpMethod;->DELETE:Lcom/rich/czlylibary/http/model/HttpMethod;

    new-instance v0, Lcom/rich/czlylibary/http/model/HttpMethod;

    const/4 v5, 0x4

    const-string v6, "HEAD"

    invoke-direct {v0, v6, v5, v6}, Lcom/rich/czlylibary/http/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rich/czlylibary/http/model/HttpMethod;->HEAD:Lcom/rich/czlylibary/http/model/HttpMethod;

    new-instance v0, Lcom/rich/czlylibary/http/model/HttpMethod;

    const/4 v6, 0x5

    const-string v7, "PATCH"

    invoke-direct {v0, v7, v6, v7}, Lcom/rich/czlylibary/http/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rich/czlylibary/http/model/HttpMethod;->PATCH:Lcom/rich/czlylibary/http/model/HttpMethod;

    new-instance v0, Lcom/rich/czlylibary/http/model/HttpMethod;

    const/4 v7, 0x6

    const-string v8, "OPTIONS"

    invoke-direct {v0, v8, v7, v8}, Lcom/rich/czlylibary/http/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rich/czlylibary/http/model/HttpMethod;->OPTIONS:Lcom/rich/czlylibary/http/model/HttpMethod;

    new-instance v0, Lcom/rich/czlylibary/http/model/HttpMethod;

    const-string v8, "TRACE"

    const/4 v9, 0x7

    invoke-direct {v0, v8, v9, v8}, Lcom/rich/czlylibary/http/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rich/czlylibary/http/model/HttpMethod;->TRACE:Lcom/rich/czlylibary/http/model/HttpMethod;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/rich/czlylibary/http/model/HttpMethod;

    sget-object v8, Lcom/rich/czlylibary/http/model/HttpMethod;->GET:Lcom/rich/czlylibary/http/model/HttpMethod;

    aput-object v8, v0, v1

    sget-object v1, Lcom/rich/czlylibary/http/model/HttpMethod;->POST:Lcom/rich/czlylibary/http/model/HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rich/czlylibary/http/model/HttpMethod;->PUT:Lcom/rich/czlylibary/http/model/HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rich/czlylibary/http/model/HttpMethod;->DELETE:Lcom/rich/czlylibary/http/model/HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rich/czlylibary/http/model/HttpMethod;->HEAD:Lcom/rich/czlylibary/http/model/HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/rich/czlylibary/http/model/HttpMethod;->PATCH:Lcom/rich/czlylibary/http/model/HttpMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/rich/czlylibary/http/model/HttpMethod;->OPTIONS:Lcom/rich/czlylibary/http/model/HttpMethod;

    aput-object v1, v0, v7

    sget-object v1, Lcom/rich/czlylibary/http/model/HttpMethod;->TRACE:Lcom/rich/czlylibary/http/model/HttpMethod;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/rich/czlylibary/http/model/HttpMethod;->a:[Lcom/rich/czlylibary/http/model/HttpMethod;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/rich/czlylibary/http/model/HttpMethod;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rich/czlylibary/http/model/HttpMethod;
    .locals 1

    const-class v0, Lcom/rich/czlylibary/http/model/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rich/czlylibary/http/model/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/rich/czlylibary/http/model/HttpMethod;
    .locals 1

    sget-object v0, Lcom/rich/czlylibary/http/model/HttpMethod;->a:[Lcom/rich/czlylibary/http/model/HttpMethod;

    invoke-virtual {v0}, [Lcom/rich/czlylibary/http/model/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rich/czlylibary/http/model/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public hasBody()Z
    .locals 3

    sget-object v0, Lcom/rich/czlylibary/http/model/HttpMethod$1;->a:[I

    invoke-virtual {p0}, Lcom/rich/czlylibary/http/model/HttpMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/model/HttpMethod;->value:Ljava/lang/String;

    return-object v0
.end method
