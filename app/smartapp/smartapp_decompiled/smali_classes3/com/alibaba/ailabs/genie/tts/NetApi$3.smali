.class final Lcom/alibaba/ailabs/genie/tts/NetApi$3;
.super Ljava/lang/Object;
.source "NetApi.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/tts/NetApi;->sendAsyn(Lmtopsdk/mtop/domain/MtopRequest;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lmtopsdk/mtop/common/ApiID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingUpdateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$3;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 231
    new-instance v0, Lcom/alibaba/ailabs/genie/tts/NetApi$3$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/tts/NetApi$3$2;-><init>(Lcom/alibaba/ailabs/genie/tts/NetApi$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 1

    .line 219
    new-instance v0, Lcom/alibaba/ailabs/genie/tts/NetApi$3$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/tts/NetApi$3$1;-><init>(Lcom/alibaba/ailabs/genie/tts/NetApi$3;Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
