.class public Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;
.super Landroid/os/Handler;
.source "LoadingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadingHandler"
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 171
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 172
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public get()Landroid/app/Activity;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 182
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "GenieAIRouter"

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string/jumbo p1, "really must removeLoadingWindow;"

    .line 254
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$300()Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 257
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$300()Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 260
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 263
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;->get()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 265
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :catch_1
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    :try_start_2
    const-string/jumbo p1, "really removeLoadingWindow by 0x02"

    .line 275
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$400()Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 277
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$400()Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->endPro()V

    .line 278
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$500()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$400()Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 279
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$402(Lcom/alibaba/ailabs/genie/router/view/LoadingView;)Lcom/alibaba/ailabs/genie/router/view/LoadingView;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception p1

    .line 283
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    .line 185
    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 186
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading overtime, bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "null"

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_6
    move-object v5, v1

    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_8

    .line 189
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$000()Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 191
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$000()Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;->sendEmptyMessage(I)Z

    :cond_7
    return-void

    :cond_8
    const-string/jumbo v0, "token"

    .line 196
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, "packageName"

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "uri"

    .line 198
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const-string v8, "delay"

    .line 199
    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loading overtime, token="

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "; mtoken="

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$100()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "; mLoadingData="

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$200()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$200()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$200()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$200()Ljava/util/Map;

    move-result-object p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$200()Ljava/util/Map;

    move-result-object p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;->isSendCloseMessage()Z

    move-result p1

    if-nez p1, :cond_a

    .line 205
    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->checkUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 206
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->killProcessByPackagename(Ljava/lang/String;)V

    .line 209
    :cond_a
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$200()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$200()Ljava/util/Map;

    move-result-object p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 210
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$200()Ljava/util/Map;

    move-result-object p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_b
    :try_start_3
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$300()Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 214
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$300()Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->stop()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    :cond_c
    :goto_4
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$400()Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$100()J

    move-result-wide v0

    cmp-long p1, v5, v0

    if-nez p1, :cond_10

    .line 225
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;->get()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 227
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    .line 230
    :cond_d
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :cond_e
    :goto_5
    return-void

    :catch_4
    move-exception p1

    .line 234
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    :cond_f
    :goto_6
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "really removeLoadingWindow by 0x01; token="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$400()Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 240
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$400()Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->endPro()V

    .line 241
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$500()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$400()Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 242
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$402(Lcom/alibaba/ailabs/genie/router/view/LoadingView;)Lcom/alibaba/ailabs/genie/router/view/LoadingView;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    move-exception p1

    .line 246
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_7
    return-void
.end method
