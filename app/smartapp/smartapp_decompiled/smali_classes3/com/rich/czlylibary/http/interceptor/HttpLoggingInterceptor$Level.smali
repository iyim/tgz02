.class public final enum Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BASIC:Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

.field public static final enum BODY:Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

.field public static final enum HEADERS:Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

.field public static final enum NONE:Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

.field private static final synthetic a:[Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    new-instance v0, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    const/4 v2, 0x1

    const-string v3, "BASIC"

    invoke-direct {v0, v3, v2}, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;->BASIC:Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    new-instance v0, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    const/4 v3, 0x2

    const-string v4, "HEADERS"

    invoke-direct {v0, v4, v3}, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;->HEADERS:Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    new-instance v0, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    const/4 v4, 0x3

    const-string v5, "BODY"

    invoke-direct {v0, v5, v4}, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    sget-object v5, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    aput-object v5, v0, v1

    sget-object v1, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;->BASIC:Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;->HEADERS:Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v4

    sput-object v0, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;->a:[Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;
    .locals 1

    const-class v0, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public static values()[Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;
    .locals 1

    sget-object v0, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;->a:[Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v0}, [Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    return-object v0
.end method
