.class Lcom/taobao/android/dinamic/expression/parser/AppStyleParser$1;
.super Landroid/os/AsyncTask;
.source "AppStyleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamic/expression/parser/AppStyleParser;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamic/expression/parser/AppStyleParser;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamic/expression/parser/AppStyleParser;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/taobao/android/dinamic/expression/parser/AppStyleParser$1;->this$0:Lcom/taobao/android/dinamic/expression/parser/AppStyleParser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/expression/parser/AppStyleParser$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 27
    invoke-static {}, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;->getInstance()Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;->loadJsonObj()Lcom/alibaba/fastjson/JSONObject;

    const/4 p1, 0x0

    return-object p1
.end method
