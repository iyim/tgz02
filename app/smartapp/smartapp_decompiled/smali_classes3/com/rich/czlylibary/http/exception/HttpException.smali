.class public Lcom/rich/czlylibary/http/exception/HttpException;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final serialVersionUID:J = 0x79c2914329144639L


# instance fields
.field private transient a:Lcom/rich/czlylibary/http/model/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/czlylibary/http/model/a<",
            "*>;"
        }
    .end annotation
.end field

.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/rich/czlylibary/http/model/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/model/a<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/rich/czlylibary/http/exception/HttpException;->a(Lcom/rich/czlylibary/http/model/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/rich/czlylibary/http/model/a;->a()I

    move-result v0

    iput v0, p0, Lcom/rich/czlylibary/http/exception/HttpException;->code:I

    invoke-virtual {p1}, Lcom/rich/czlylibary/http/model/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/czlylibary/http/exception/HttpException;->message:Ljava/lang/String;

    iput-object p1, p0, Lcom/rich/czlylibary/http/exception/HttpException;->a:Lcom/rich/czlylibary/http/model/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static COMMON(Ljava/lang/String;)Lcom/rich/czlylibary/http/exception/HttpException;
    .locals 1

    new-instance v0, Lcom/rich/czlylibary/http/exception/HttpException;

    invoke-direct {v0, p0}, Lcom/rich/czlylibary/http/exception/HttpException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static NET_ERROR()Lcom/rich/czlylibary/http/exception/HttpException;
    .locals 2

    new-instance v0, Lcom/rich/czlylibary/http/exception/HttpException;

    const-string v1, "network error! http response code is 404 or 5xx!"

    invoke-direct {v0, v1}, Lcom/rich/czlylibary/http/exception/HttpException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lcom/rich/czlylibary/http/model/a;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/model/a<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "response == null"

    invoke-static {p0, v0}, Lcom/rich/czlylibary/http/f/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rich/czlylibary/http/model/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rich/czlylibary/http/model/a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public code()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/http/exception/HttpException;->code:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/exception/HttpException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public response()Lcom/rich/czlylibary/http/model/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/rich/czlylibary/http/model/a<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/exception/HttpException;->a:Lcom/rich/czlylibary/http/model/a;

    return-object v0
.end method
