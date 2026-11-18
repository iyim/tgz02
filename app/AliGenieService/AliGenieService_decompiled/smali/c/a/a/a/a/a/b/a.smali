.class public Lc/a/a/a/a/a/b/a;
.super Lc/a/a/b/i/c;
.source ""

# interfaces
.implements Lc/a/a/b/g/a;


# instance fields
.field public e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

.field public g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lc/a/a/a/a/a/b/i;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lc/a/a/a/a/a/b/k;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lc/a/a/a/a/a/b/h;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lc/a/a/a/a/a/b/g;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lc/a/a/a/a/a/b/j;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lc/a/a/a/a/a/b/b;

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/a/a/b/i/c;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;->DEFAULT_LISTENER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    iput-object p1, p0, Lc/a/a/a/a/a/b/a;->f:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/a/a/a/a/a/b/a;->l:Ljava/lang/ref/WeakReference;

    new-instance p1, Lc/a/a/a/a/a/b/b;

    invoke-direct {p1}, Lc/a/a/a/a/a/b/b;-><init>()V

    iput-object p1, p0, Lc/a/a/a/a/a/b/a;->m:Lc/a/a/a/a/a/b/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/a/a/a/a/a/b/a;->n:Z

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "AliTVASRManager"

    if-ne p1, v1, :cond_7

    .line 9
    invoke-virtual {p0}, Lc/a/a/a/a/a/b/a;->g()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "no onASRStatusUpdate listener"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_NULL:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    if-eqz p2, :cond_6

    const-string v3, "status"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "start_recording"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_RECORD_START:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    goto :goto_0

    :cond_1
    const-string v4, "stop_recording"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_RECORD_END:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    goto :goto_0

    :cond_2
    const-string v4, "start_recognizing"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_RECOGNIZE_START:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    goto :goto_0

    :cond_3
    const-string v4, "stop_recognizing"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_RECOGNIZE_END:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    goto :goto_0

    :cond_4
    const-string v4, "volume_update"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_VOLUME_UPDATE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    goto :goto_0

    :cond_5
    const-string v4, "error"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_ERROR:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    :cond_6
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onASRStatusUpdate status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/aligenie/ags/access/AccessService$a;

    invoke-virtual {p1, v1, p2}, Lcom/aligenie/ags/access/AccessService$a;->a(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;Landroid/os/Bundle;)V

    goto/16 :goto_10

    :cond_7
    const/4 v3, 0x2

    if-ne p1, v3, :cond_a

    .line 10
    invoke-virtual {p0}, Lc/a/a/a/a/a/b/a;->e()Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "getAppContextData: no valid"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lc/a/a/a/a/a/b/a;->g()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object p1

    if-eqz p1, :cond_9

    :try_start_0
    new-instance p2, Lc/a/a/a/a/a/b/e;

    invoke-direct {p2}, Lc/a/a/a/a/a/b/e;-><init>()V

    check-cast p1, Lcom/aligenie/ags/access/AccessService$a;

    invoke-static {p2}, Lc/a/a/a/a/a/b/e;->a(Lc/a/a/a/a/a/b/e;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_1
    move-object p1, v0

    .line 11
    :goto_2
    invoke-static {v0, p1, v0}, Lc/a/a/b/i/a;->a(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_a
    const/4 v3, 0x3

    if-ne p1, v3, :cond_12

    :try_start_1
    const-string p1, "id"

    .line 12
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v1, "data"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    :try_start_2
    invoke-virtual {p0}, Lc/a/a/a/a/a/b/a;->g()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object p1

    goto/16 :goto_9

    .line 13
    :pswitch_1
    iget-object p1, p0, Lc/a/a/a/a/a/b/a;->l:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/a/a/a/b/j;

    goto :goto_3

    :cond_b
    move-object p1, v0

    :goto_3
    if-eqz p1, :cond_11

    const-string v2, "type"

    .line 14
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "arg1"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, v3, p2}, Lc/a/a/a/a/a/b/j;->a(IILjava/lang/String;)V

    goto/16 :goto_a

    .line 15
    :pswitch_2
    iget-object p1, p0, Lc/a/a/a/a/a/b/a;->k:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/a/a/a/b/g;

    goto :goto_4

    :cond_c
    move-object p1, v0

    :goto_4
    if-eqz p1, :cond_11

    .line 16
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lc/a/a/a/a/a/b/g;->a(Z)V

    goto/16 :goto_a

    .line 17
    :pswitch_3
    iget-object p1, p0, Lc/a/a/a/a/a/b/a;->j:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/a/a/a/b/h;

    goto :goto_5

    :cond_d
    move-object p1, v0

    :goto_5
    if-eqz p1, :cond_11

    .line 18
    invoke-interface {p1}, Lc/a/a/a/a/a/b/h;->a()I

    move-result p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_6
    move-object v0, p2

    goto/16 :goto_a

    .line 19
    :pswitch_4
    iget-object p1, p0, Lc/a/a/a/a/a/b/a;->i:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/a/a/a/b/k;

    goto :goto_7

    :cond_e
    move-object p1, v0

    :goto_7
    if-eqz p1, :cond_11

    const-string v2, "call_back_type"

    .line 20
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_f

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lc/a/a/a/a/a/b/k;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    const/16 v3, 0x65

    if-ne v2, v3, :cond_11

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lc/a/a/a/a/a/b/k;->a(Z)V

    goto :goto_a

    .line 21
    :pswitch_5
    iget-object p1, p0, Lc/a/a/a/a/a/b/a;->h:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/a/a/a/b/i;

    goto :goto_8

    :cond_10
    move-object p1, v0

    :goto_8
    if-eqz p1, :cond_11

    .line 22
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lc/a/a/a/a/a/b/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 23
    :pswitch_6
    iget-object p1, p0, Lc/a/a/b/i/a;->c:Landroid/content/Context;

    .line 24
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :goto_9
    if-eqz p1, :cond_11

    :try_start_3
    check-cast p1, Lcom/aligenie/ags/access/AccessService$a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_a

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_a
    return-object v0

    :cond_12
    const/4 v3, 0x4

    if-ne p1, v3, :cond_20

    .line 25
    new-instance p1, Lc/a/a/a/a/a/b/c;

    invoke-direct {p1}, Lc/a/a/a/a/a/b/c;-><init>()V

    invoke-virtual {p0}, Lc/a/a/a/a/a/b/a;->e()Z

    move-result v3

    if-nez v3, :cond_13

    const-string p2, "handleASRCommand -> asrCommandBundle no valid"

    goto/16 :goto_e

    :cond_13
    invoke-virtual {p0}, Lc/a/a/a/a/a/b/a;->g()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object v3

    if-eqz v3, :cond_17

    if-eqz p2, :cond_17

    iget-object v4, p0, Lc/a/a/a/a/a/b/a;->m:Lc/a/a/a/a/a/b/b;

    .line 26
    iget v4, v4, Lc/a/a/a/a/a/b/b;->b:I

    if-ne v4, v1, :cond_14

    const-string v4, "asr"

    .line 27
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "finish"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "0"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v1

    check-cast v3, Lcom/aligenie/ags/access/AccessService$a;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onASRResult: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " arg1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Access"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 29
    :cond_14
    new-instance v1, Lc/a/a/a/a/a/b/c;

    invoke-direct {v1}, Lc/a/a/a/a/a/b/c;-><init>()V

    const-string v3, "nlp"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNLPResult->nlpResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    :try_start_5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "dm_result"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 30
    :try_start_6
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_b

    :catch_3
    move-object v3, v0

    :goto_b
    if-eqz v3, :cond_15

    :try_start_7
    const-string v4, "action"

    .line 31
    invoke-static {v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "Action"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {p0, v4, v3, p2}, Lc/a/a/a/a/a/b/a;->a(Landroid/net/Uri;Lorg/json/JSONObject;Landroid/os/Bundle;)Lc/a/a/a/a/a/b/c;

    move-result-object p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    invoke-virtual {p0}, Lc/a/a/a/a/a/b/a;->g()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object v3

    if-eqz v3, :cond_16

    check-cast v3, Lcom/aligenie/ags/access/AccessService$a;

    const-string v1, ""

    invoke-virtual {v3, v1, v1, v1, p2}, Lcom/aligenie/ags/access/AccessService$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lc/a/a/a/a/a/b/c;

    move-result-object v1

    :cond_16
    move-object p2, v1

    :goto_c
    if-eqz p2, :cond_17

    move-object p1, p2

    :cond_17
    :goto_d
    const-string p2, "handleASRCommand process result = "

    .line 32
    invoke-static {p2}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_e
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :try_start_8
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v1, p1, Lc/a/a/a/a/a/b/c;->a:Z

    if-eqz v1, :cond_18

    const-string v1, "handled"

    iget-boolean v2, p1, Lc/a/a/a/a/a/b/c;->a:Z

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_18
    iget-boolean v1, p1, Lc/a/a/a/a/a/b/c;->g:Z

    if-eqz v1, :cond_19

    const-string v2, "openFarMic"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_19
    iget-boolean v1, p1, Lc/a/a/a/a/a/b/c;->h:Z

    if-eqz v1, :cond_1a

    const-string v2, "forceClose"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1a
    iget-object v1, p1, Lc/a/a/a/a/a/b/c;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "errorCode"

    iget-object v2, p1, Lc/a/a/a/a/a/b/c;->b:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b
    iget-object v1, p1, Lc/a/a/a/a/a/b/c;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "errorMessage"

    iget-object v2, p1, Lc/a/a/a/a/a/b/c;->c:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1c
    iget-object v1, p1, Lc/a/a/a/a/a/b/c;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "mention"

    iget-object v2, p1, Lc/a/a/a/a/a/b/c;->d:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1d
    iget-object v1, p1, Lc/a/a/a/a/a/b/c;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "successMessage"

    iget-object v2, p1, Lc/a/a/a/a/a/b/c;->e:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1e
    iget-object v1, p1, Lc/a/a/a/a/a/b/c;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "spokenMessage"

    iget-object p1, p1, Lc/a/a/a/a/a/b/c;->f:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1f
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_f

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    .line 34
    :goto_f
    invoke-static {v0, p1, v0}, Lc/a/a/b/i/a;->a(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_20
    :goto_10
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/net/Uri;Lorg/json/JSONObject;Landroid/os/Bundle;)Lc/a/a/a/a/a/b/c;
    .locals 8

    new-instance v0, Lc/a/a/a/a/a/b/c;

    invoke-direct {v0}, Lc/a/a/a/a/a/b/c;-><init>()V

    invoke-virtual {p0}, Lc/a/a/a/a/a/b/a;->g()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object v1

    iget-object v2, p0, Lc/a/a/a/a/a/b/a;->f:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    const-string v3, "processAction->dmResult = "

    invoke-static {v3}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AliTVASRManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "processAction->actionUri ="

    invoke-static {v6}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " host:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " path:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " param:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "action_param"

    invoke-static {p2, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v4, "Multimedia"

    const/4 v6, 0x1

    if-eq v2, v6, :cond_4

    const/4 v7, 0x2

    if-eq v2, v7, :cond_4

    const/4 v6, 0x3

    if-eq v2, v6, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    :cond_0
    const-string v2, "air_conditioner"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "air_cube"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "air_cleaner"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "water_heater"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    :cond_2
    const-string v2, "Signal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "/Tvchannel/Switch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "Music"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "Audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "Video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 35
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    const-string v2, "Pause"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Screen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Play"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Select"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Continue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move v4, v6

    :cond_7
    :goto_0
    if-eqz v4, :cond_a

    .line 36
    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_1
    move-object v5, v3

    :cond_9
    invoke-static {p2, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast v1, Lcom/aligenie/ags/access/AccessService$a;

    invoke-virtual {v1, v3, v5, p1, p3}, Lcom/aligenie/ags/access/AccessService$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lc/a/a/a/a/a/b/c;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/a/a/a/a/a/b/a;->e:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lc/a/a/a/a/a/b/a;->m:Lc/a/a/a/a/a/b/b;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1
    iput-object p1, v0, Lc/a/a/a/a/a/b/b;->g:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lc/a/a/a/a/a/b/a;->m:Lc/a/a/a/a/a/b/b;

    .line 3
    iput-boolean p2, p1, Lc/a/a/a/a/a/b/b;->a:Z

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lc/a/a/a/a/a/b/a;->n:Z

    .line 5
    invoke-virtual {p1}, Lc/a/a/a/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lc/a/a/a/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc/a/a/a/a/a/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "_"

    invoke-static {v0, v2, v1}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v2, p1, Lc/a/a/a/a/a/b/b;->j:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v0, p1, Lc/a/a/a/a/a/b/b;->j:Ljava/lang/String;

    .line 6
    :goto_1
    iget-object p1, p0, Lc/a/a/b/i/a;->c:Landroid/content/Context;

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {p1, v0}, Lc/a/a/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Lc/a/a/b/d;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lc/a/a/b/d;->a:Lc/a/a/b/f/a;

    const-string v0, "com.alibaba.ailabs.genie.assistant.asr"

    invoke-virtual {p1, v0, p0, p2}, Lc/a/a/b/f/a;->a(Ljava/lang/String;Lc/a/a/b/g/a;Z)V

    .line 8
    invoke-virtual {p0}, Lc/a/a/a/a/a/b/a;->h()Z

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4

    invoke-virtual {p0}, Lc/a/a/a/a/a/b/a;->e()Z

    move-result v0

    const-string v1, ", binder = "

    const-string v2, "AliTVASRManager"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusChange: has expiration, serverName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusChange: serverName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lc/a/a/a/a/a/b/a;->h()Z

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lc/a/a/a/a/a/b/a;->n:Z

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, p0, Lc/a/a/a/a/a/b/a;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public f()Lc/a/a/a/a/a/b/d;
    .locals 2

    iget-boolean v0, p0, Lc/a/a/a/a/a/b/a;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    iget-object v0, p0, Lc/a/a/a/a/a/b/a;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    .line 2
    :cond_2
    invoke-static {v0}, Lc/a/a/a/a/a/b/d;->b(Landroid/content/Context;)Lc/a/a/a/a/a/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;
    .locals 1

    iget-object v0, p0, Lc/a/a/a/a/a/b/a;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final h()Z
    .locals 4

    invoke-virtual {p0}, Lc/a/a/a/a/a/b/a;->f()Lc/a/a/a/a/a/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lc/a/a/a/a/a/b/a;->m:Lc/a/a/a/a/a/b/b;

    .line 1
    iget-object v2, p0, Lc/a/a/b/i/a;->d:Landroid/os/IBinder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/a/b/d;->a(Lc/a/a/a/a/a/b/b;Landroid/os/IBinder;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerAll: ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", client info ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc/a/a/a/a/a/b/a;->m:Lc/a/a/a/a/a/b/b;

    invoke-virtual {v3}, Lc/a/a/a/a/a/b/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", asrManager= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AliTVASRManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
