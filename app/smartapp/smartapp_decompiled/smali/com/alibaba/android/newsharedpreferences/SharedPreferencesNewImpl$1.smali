.class Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$1;
.super Ljava/lang/Object;
.source "SharedPreferencesNewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;-><init>(Ljava/io/File;ILcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$1;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 112
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$1;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-static {v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->access$000(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$1;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    new-instance v1, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;

    invoke-static {v0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->access$000(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;-><init>(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->access$102(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;)Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$1;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-static {v0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->access$200(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$1;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-static {v0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->access$100(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;->startWatching()V

    :cond_1
    return-void
.end method
