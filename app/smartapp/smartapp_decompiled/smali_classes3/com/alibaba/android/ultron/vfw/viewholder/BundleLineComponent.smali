.class public Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineComponent;
.super Lcom/taobao/android/ultron/datamodel/imp/DMComponent;
.source "BundleLineComponent.java"


# static fields
.field public static final COMPONENT_TAG:Ljava/lang/String; = "bundleLine"

.field private static final JSON_DATA:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "{\n        \"tag\" : \"bundleLine\",\n        \"type\" : \"bundleLine\",\n        \"fields\" : {}\n      }"

    .line 16
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineComponent;->JSON_DATA:Lcom/alibaba/fastjson/JSONObject;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 3

    .line 23
    sget-object v0, Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineComponent;->JSON_DATA:Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x0

    const-string v2, "native"

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineComponent;-><init>(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;-><init>(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
