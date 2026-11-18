.class Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$1;
.super Ljava/lang/Object;
.source "SharedPreferencesNewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;-><init>(Ljava/io/File;ILcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$1;->this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 139
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$1;->this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->access$000(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
