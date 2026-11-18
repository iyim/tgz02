.class public final Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;
.super Ljava/lang/Object;
.source "AGDSClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IRawCallback;,
        Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSFailed;,
        Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSSuccess;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MODE_EVENT_AGDS:I = 0x2

.field private static final MODE_MTOP_CUSTOM:I = 0x1

.field public static final MTOP_CUSTOM_EVENTNAME:Ljava/lang/String; = "Mtop"

.field public static final MTOP_CUSTOM_EVENTNS:Ljava/lang/String; = "AliGenie.API"


# instance fields
.field private eventName:Ljava/lang/String;

.field private eventNs:Ljava/lang/String;

.field private mFailCallback:Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSFailed;

.field private final mMode:I

.field private mRawCallback:Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IRawCallback;

.field private mSucCallback:Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSSuccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSSuccess<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mtopParam:Lmtopsdk/mtop/domain/IMTOPDataObject;

.field private payload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->eventName:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->eventNs:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->payload:Ljava/lang/String;

    const/4 p1, 0x2

    .line 36
    iput p1, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->mMode:I

    return-void
.end method

.method private actionResponse(IILjava/lang/String;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->mRawCallback:Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IRawCallback;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IRawCallback;->onRawCallback(IILjava/lang/String;)V

    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->eventNs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/second/agds/-$$Lambda$AGDSClient$-dsjNTr4hnfFWhMAtJFOBQ6kWwI;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/second/agds/-$$Lambda$AGDSClient$-dsjNTr4hnfFWhMAtJFOBQ6kWwI;-><init>(Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;)V

    invoke-static {v0, p3, v1}, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser;->parseResult(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$IResultPayloadGJsonElementParser;)Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap;

    move-result-object p3

    .line 156
    iget-object v0, p3, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap;->yours:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 157
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->mSucCallback:Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSSuccess;

    if-eqz p1, :cond_2

    .line 158
    iget-object p2, p3, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap;->yours:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSSuccess;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->mFailCallback:Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSFailed;

    if-eqz v0, :cond_2

    .line 162
    iget-object v1, p3, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap;->errorInfo:Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ErrorInfo;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ErrorInfo;->errorCode:Ljava/lang/String;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap;->errorInfo:Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ErrorInfo;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ErrorInfo;->errorInfo:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSFailed;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$0lxApT76p8M7UMsETuqouHCGqvE(Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->actionResponse(IILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public synthetic lambda$actionResponse$1$AGDSClient(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->mSucCallback:Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSSuccess;

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 144
    array-length v3, v1

    if-gtz v3, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    aget-object v0, v1, v2

    goto :goto_1

    .line 145
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 149
    :goto_1
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/alibaba/ailabs/genie/second/utils/GsonUtils;->ourGSON:Lcom/google/gson/Gson;

    aget-object v0, v0, v2

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final sendEventToServer()V
    .locals 5

    .line 103
    iget v0, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->payload:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->mtopParam:Lmtopsdk/mtop/domain/IMTOPDataObject;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser;->convertRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;

    move-result-object v0

    .line 108
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;->errorMsg:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->mRawCallback:Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IRawCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;->errorCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;->errorMsg:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v2, v0}, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IRawCallback;->onRawCallback(IILjava/lang/String;)V

    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->mFailCallback:Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSFailed;

    if-eqz v1, :cond_2

    .line 115
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;->errorCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;->errorMsg:Ljava/lang/String;

    invoke-interface {v1, v2, v2, v3, v4}, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSFailed;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_2
    iget-object v0, v0, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;->payload:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    return-void

    .line 126
    :cond_4
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->eventNs:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->eventName:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/ailabs/genie/second/agds/-$$Lambda$AGDSClient$0lxApT76p8M7UMsETuqouHCGqvE;

    invoke-direct {v4, p0}, Lcom/alibaba/ailabs/genie/second/agds/-$$Lambda$AGDSClient$0lxApT76p8M7UMsETuqouHCGqvE;-><init>(Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    return-void
.end method

.method public setFailCallback(Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSFailed;)Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSFailed;",
            ")",
            "Lcom/alibaba/ailabs/genie/second/agds/AGDSClient<",
            "TT;>;"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->mFailCallback:Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSFailed;

    return-object p0
.end method

.method public setRawCallback(Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IRawCallback;)Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IRawCallback;",
            ")",
            "Lcom/alibaba/ailabs/genie/second/agds/AGDSClient<",
            "TT;>;"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->mRawCallback:Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IRawCallback;

    return-object p0
.end method

.method public setSuccessCallback(Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSSuccess;)Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSSuccess<",
            "TT;>;)",
            "Lcom/alibaba/ailabs/genie/second/agds/AGDSClient<",
            "TT;>;"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->mSucCallback:Lcom/alibaba/ailabs/genie/second/agds/AGDSClient$IAGDSSuccess;

    return-object p0
.end method
