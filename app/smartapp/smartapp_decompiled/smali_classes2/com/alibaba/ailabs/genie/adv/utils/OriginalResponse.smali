.class public Lcom/alibaba/ailabs/genie/adv/utils/OriginalResponse;
.super Ljava/lang/Object;
.source "OriginalResponse.java"


# instance fields
.field private body:Ljava/lang/String;

.field private code:I

.field private headers:Lokhttp3/Headers;

.field private successful:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/alibaba/ailabs/genie/adv/utils/OriginalResponse;->code:I

    .line 13
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/adv/utils/OriginalResponse;->successful:Z

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/utils/OriginalResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/alibaba/ailabs/genie/adv/utils/OriginalResponse;->code:I

    return v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/utils/OriginalResponse;->headers:Lokhttp3/Headers;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isSuccessful()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/adv/utils/OriginalResponse;->successful:Z

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/utils/OriginalResponse;->body:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Lokhttp3/Headers;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/utils/OriginalResponse;->headers:Lokhttp3/Headers;

    return-void
.end method

.method public setSuccessful(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/adv/utils/OriginalResponse;->successful:Z

    return-void
.end method
