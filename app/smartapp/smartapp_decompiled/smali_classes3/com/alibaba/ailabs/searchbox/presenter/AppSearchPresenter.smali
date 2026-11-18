.class public Lcom/alibaba/ailabs/searchbox/presenter/AppSearchPresenter;
.super Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter;
.source "AppSearchPresenter.java"

# interfaces
.implements Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter<",
        "Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IView;",
        ">;",
        "Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IPresenter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppSearchPresenter-l"


# instance fields
.field adapter:Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IView;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter;-><init>(Landroid/app/Activity;Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initViewContent(Landroid/app/Activity;Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/presenter/AppSearchPresenter;->mView:Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/presenter/AppSearchPresenter;->mView:Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;

    check-cast v0, Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IView;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IView;->initViewContent(Landroid/app/Activity;Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getTestData()Ljava/lang/String;
    .locals 1

    const-string v0, "{\"recommendAppList\":[{\"author\":\"[{\\\"name\\\":\\\"\u6d59\u6c5f\u5929\u732b\u6280\u672f\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001157628730&pkg=com.alibaba.ailabs.genie.webapps&vc=305&miniAppId=152\",\"icon\":\"https://img.alicdn.com/tfs/TB1QWyQasVl614jSZKPXXaGjpXa-136-136.png\",\"description\":\"\u542c\u4e86\u4ed6\u4eec\u7684\u6545\u4e8b\uff0c\u6709\u5229\u4e8e\u5c11\u513f\u4ece\u5c0f\u5efa\u7acb\u826f\u597d\u7684\u6c42\u77e5\u63a2\u7d22\u7cbe\u795e\uff0c\u4e3a\u5b69\u5b50\u6253\u5f00\u4e00\u6247\u667a\u6167\u7684\u5927\u95e8\",\"title\":\"\u540d\u4eba\u6545\u4e8b\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u6765\u4e2a\u540d\u4eba\u8da3\u4e8b\\\",\\\"\u7ed9\u6211\u64ad\u653e\u540d\u4eba\u6545\u4e8b\\\",\\\"\u5e2e\u6211\u64ad\u653e\u540d\u4eba\u6545\u4e8b\\\",\\\"\u6253\u5f00\u540d\u4eba\u6545\u4e8b\\\",\\\"\u6211\u8981\u542c\u540d\u4eba\u6545\u4e8b\\\",\\\"\u6211\u8981\u770b\u540d\u4eba\u6545\u4e8b\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u8ba9\u5b69\u5b50\u5728\u7f8e\u4e3d\u7684\u6545\u4e8b\u4e2d\u5feb\u4e50\u6210\u957f\uff01\",\"algTrackLog\":\"{\\\"trace_id\\\":\\\"20210924140608593-1226149778\\\",\\\"service_name\\\":\\\"\u540d\u4eba\u6545\u4e8b\\\",\\\"recall_path\\\":\\\"basic\\\",\\\"query\\\":\\\"\u6211\u8981\u5b66\u6570\u5b66\\\",\\\"scene_id\\\":\\\"22120\\\",\\\"page_num\\\":\\\"\\\",\\\"type\\\":\\\"LINK\\\",\\\"exposure_time\\\":\\\"1632463568837\\\",\\\"score\\\":\\\"0.1063844\\\",\\\"query_nlu\\\":\\\"null\\\",\\\"service_id\\\":\\\"2020082826050\\\",\\\"position\\\":\\\"9\\\",\\\"ab_id\\\":\\\"189903\\\",\\\"page_size\\\":\\\"10\\\"}\",\"appId\":\"2020082826050\",\"stsType\":\"LINK\",\"screenShot\":[],\"isOffline\":false,\"applicationId\":\"100b15dac9253f441d2d2d2b2146263e\",\"stsValue\":\"[\\\"\u540d\u4eba\u6545\u4e8b\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u6d59\u6c5f\u5929\u732b\u6280\u672f\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001157628730&pkg=com.alibaba.ailabs.genie.webapps&vc=305&miniAppId=167\",\"icon\":\"https://img.alicdn.com/tfs/TB1l4nUMbY1gK0jSZTEXXXDQVXa-136-136.png\",\"description\":\"\u513f\u6b4c\u8d44\u6e90\u5927\u5168\uff0c\u7cbe\u5fc3\u6311\u9009\u6bcf\u9996\u7ecf\u5178\u3002\",\"title\":\"\u513f\u6b4c\u5927\u5408\u96c6\",\"voiceDisposition\":\"{\\\"new\\\":[],\\\"old\\\":[]}\",\"subTitle\":\"\u4eb2\u5b50\u4e92\u52a8\uff0c\u667a\u6167\u6210\u957f\",\"algTrackLog\":\"{\\\"trace_id\\\":\\\"20210924140608593-1226149778\\\",\\\"service_name\\\":\\\"\u513f\u6b4c\u5927\u5408\u96c6\\\",\\\"recall_path\\\":\\\"basic\\\",\\\"query\\\":\\\"\u6211\u8981\u5b66\u6570\u5b66\\\",\\\"scene_id\\\":\\\"22120\\\",\\\"page_num\\\":\\\"\\\",\\\"type\\\":\\\"LINK\\\",\\\"exposure_time\\\":\\\"1632463568837\\\",\\\"score\\\":\\\"0.1423482\\\",\\\"query_nlu\\\":\\\"null\\\",\\\"service_id\\\":\\\"2020082826065\\\",\\\"position\\\":\\\"3\\\",\\\"ab_id\\\":\\\"189903\\\",\\\"page_size\\\":\\\"10\\\"}\",\"appId\":\"2020082826065\",\"stsType\":\"LINK\",\"screenShot\":[],\"isOffline\":false,\"applicationId\":\"ad49a070d4b7ad1d658145b9e810c7e4\",\"stsValue\":\"[\\\"\u513f\u6b4c\u5927\u5408\u96c6\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u6d59\u6c5f\u5929\u732b\u6280\u672f\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001157628730&pkg=com.alibaba.ailabs.genie.webapps&vc=305&miniAppId=182\",\"icon\":\"https://img.alicdn.com/tfs/TB16xnSMhz1gK0jSZSgXXavwpXa-136-136.png\",\"description\":\"\u5e2e\u4f60\u966a\u5b69\u5b50\u5feb\u4e50\u5b66\u4e60\u3001\u5e78\u798f\u6210\u957f\u3002\",\"title\":\"\u4eb2\u5b50\u7ed8\u672c\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u6253\u5f00\u4eb2\u5b50\u7ed8\u672c\\\",\\\"\u4eb2\u5b50\u7ed8\u672c\u662f\u4ec0\u4e48\\\",\\\"\u6211\u60f3\u770b\u7ed8\u672c\\\",\\\"\u4e00\u8d77\u6765\u770b\u4eb2\u5b50\u7ed8\u672c\\\",\\\"\u4eb2\u5b50\u7ed8\u672c\u91cc\u9762\u6709\u4ec0\u4e48\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u4eab\u53d7\u73cd\u8d35\u7684\u4eb2\u5b50\u65f6\u5149\",\"algTrackLog\":\"{\\\"trace_id\\\":\\\"20210924140608593-1226149778\\\",\\\"service_name\\\":\\\"\u4eb2\u5b50\u7ed8\u672c\\\",\\\"recall_path\\\":\\\"basic\\\",\\\"query\\\":\\\"\u6211\u8981\u5b66\u6570\u5b66\\\",\\\"scene_id\\\":\\\"22120\\\",\\\"page_num\\\":\\\"\\\",\\\"type\\\":\\\"LINK\\\",\\\"exposure_time\\\":\\\"1632463568837\\\",\\\"score\\\":\\\"0.1374976\\\",\\\"query_nlu\\\":\\\"null\\\",\\\"service_id\\\":\\\"2020082826080\\\",\\\"position\\\":\\\"4\\\",\\\"ab_id\\\":\\\"189903\\\",\\\"page_size\\\":\\\"10\\\"}\",\"appId\":\"2020082826080\",\"stsType\":\"LINK\",\"screenShot\":[],\"isOffline\":false,\"applicationId\":\"f309c19c588092ab3c422aa1ffa5565c\",\"stsValue\":\"[\\\"\u4eb2\u5b50\u7ed8\u672c\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u6d59\u6c5f\u5929\u732b\u6280\u672f\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001157628730&pkg=com.alibaba.ailabs.genie.webapps&vc=305&miniAppId=181\",\"icon\":\"https://img.alicdn.com/tfs/TB16pzRajMZ7e4jSZFOXXX7epXa-136-136.png\",\"description\":\"\u4ee5\u5b69\u5b50\u7684\u5174\u8da3\u542f\u8499\u4e3a\u51fa\u53d1\u70b9\uff0c\u4e94\u5927\u9886\u57df\u5173\u6ce8\u5e7c\u513f\u6210\u957f\uff0c\u5438\u53d6\u8499\u6c0f\u6559\u80b2\u7cbe\u9ad3\uff0c\u6253\u9020\u591a\u5143\u5316\u4ea7\u54c1\u3002\",\"title\":\"\u597d\u4e60\u60ef\u517b\u6210\u73ed\",\"voiceDisposition\":\"{\\\"new\\\":[],\\\"old\\\":[]}\",\"subTitle\":\"\u597d\u4e60\u60ef\u3001\u65e9\u517b\u6210\",\"algTrackLog\":\"{\\\"trace_id\\\":\\\"20210924140608593-1226149778\\\",\\\"service_name\\\":\\\"\u597d\u4e60\u60ef\u517b\u6210\u73ed\\\",\\\"recall_path\\\":\\\"basic\\\",\\\"query\\\":\\\"\u6211\u8981\u5b66\u6570\u5b66\\\",\\\"scene_id\\\":\\\"22120\\\",\\\"page_num\\\":\\\"\\\",\\\"type\\\":\\\"LINK\\\",\\\"exposure_time\\\":\\\"1632463568837\\\",\\\"score\\\":\\\"0.1465073\\\",\\\"query_nlu\\\":\\\"null\\\",\\\"service_id\\\":\\\"2020082826079\\\",\\\"position\\\":\\\"2\\\",\\\"ab_id\\\":\\\"189903\\\",\\\"page_size\\\":\\\"10\\\"}\",\"appId\":\"2020082826079\",\"stsType\":\"LINK\",\"screenShot\":[],\"isOffline\":false,\"applicationId\":\"f4fb75f885ffd5b60262fb63272641fd\",\"stsValue\":\"[\\\"\u597d\u4e60\u60ef\u517b\u6210\u73ed\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u5149\u5408\u65b0\u77e5\uff08\u5317\u4eac\uff09\u79d1\u6280\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001157628730&pkg=com.alibaba.ailabs.genie.webapps&vc=305&miniAppId=221\",\"icon\":\"https://img.alicdn.com/tfs/TB1cvFhiRBh1e4jSZFhXXcC9VXa-136-136.png\",\"description\":\"\u6d0b\u8471\u5b66\u9662\u662f\u4e00\u6b3e\u98ce\u9761\u5168\u56fd\u5b66\u751f\u7528\u6237\u7684\u5728\u7ebf\u5b66\u4e60app\uff0c\u4e13\u6ce8\u7814\u53d1\u5c0f\u5b66\uff0c\u521d\u4e2d\uff0c\u9ad8\u4e2d\u6570\u5b66\uff0c\u7269\u7406\uff0c\u8bed\u6587\uff0c\u5316\u5b66\u7b49\u540c\u6b65\u8bfe\u7a0b\u3002\u5c06\u5185\u5bb9\u4e0eAI\u7ed3\u5408\uff0c\u5e2e\u52a9\u5b66\u751f\u5b9e\u73b0\u667a\u80fd\u5316\u5b66\u4e60\u4f53\u9a8c\uff0c\u6388\u8bfe\u91c7\u7528\u8f7b\u677e\u6709\u8da3\u7684\u52a8\u753b\u89c6\u9891\uff0c\u7ed3\u5408\u8001\u5e08\u98ce\u8da3\u6613\u61c2\u7684\u8bb2\u89e3\u65b9\u5f0f\u3002\u8ba9\u77e5\u8bc6\u4e0d\u518d\u96be\u5b66\u3002\",\"title\":\"\u6d0b\u8471\u5b66\u9662\",\"voiceDisposition\":\"{\\\"new\\\":[],\\\"old\\\":[]}\",\"subTitle\":\"\u597d\u8bfe\u4e0a\u6d0b\u8471,\u5b66\u4e60\u66f4\u4e3b\u52a8\",\"algTrackLog\":\"{\\\"trace_id\\\":\\\"20210924140608593-1226149778\\\",\\\"service_name\\\":\\\"\u6d0b\u8471\u5b66\u9662\\\",\\\"recall_path\\\":\\\"basic\\\",\\\"query\\\":\\\"\u6211\u8981\u5b66\u6570\u5b66\\\",\\\"scene_id\\\":\\\"22120\\\",\\\"page_num\\\":\\\"\\\",\\\"type\\\":\\\"LINK\\\",\\\"exposure_time\\\":\\\"1632463568837\\\",\\\"score\\\":\\\"0.1344709\\\",\\\"query_nlu\\\":\\\"null\\\",\\\"service_id\\\":\\\"2020082826124\\\",\\\"position\\\":\\\"5\\\",\\\"ab_id\\\":\\\"189903\\\",\\\"page_size\\\":\\\"10\\\"}\",\"appId\":\"2020082826124\",\"stsType\":\"LINK\",\"screenShot\":[],\"isOffline\":false,\"applicationId\":\"09153e93a1c569f49e7b91546135a724\",\"stsValue\":\"[\\\"\u6d0b\u8471\u5b66\u9662\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u4e0a\u6d77\u94a6\u6587\u4fe1\u606f\u79d1\u6280\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001157628730&pkg=com.alibaba.ailabs.genie.webapps&vc=305&miniAppId=220\",\"icon\":\"https://img.alicdn.com/tfs/TB14qxrRUY1gK0jSZFCXXcwqXXa-136-136.png\",\"description\":\"\u300a\u7231\u4e50\u5947\u82f1\u8bed\u513f\u6b4c\uff1aA2Z \u5531\u5531\u8df3\u8df3\uff01\u300b\u662f\u82f1\u56fd\u97f3\u4e50\u4eba Dave Khayat \u521b\u4f5c\uff0c\u7531\u7231\u4e50\u5947\u82f1\u8bed\u6559\u5e08 Alex \u548c Zing \u4e3b\u5531\u7684\u7ecf\u5178\u82f1\u8bed\u513f\u6b4c\u4e13\u8f91\uff0c\u542f\u8499 1~10 \u5c81\u5e7c\u513f\u7684\u82f1\u8bed\u80fd\u529b\uff0c\u7ed3\u5408\u97f3\u4e50\u548c\u82f1\u8bed\uff0c\u8ba9\u5b69\u5b50\u5728\u6717\u6717\u4e0a\u53e3\u7684\u65cb\u5f8b\u4e2d\uff0c\u5efa\u7acb\u5b66\u4e60\u82f1\u8bed\u7684\u5174\u8da3\u3002\u7231\u4e50\u5947\u81f4\u529b\u4e8e\u57f9\u517b\u77e5\u8bc6\u3001\u80fd\u529b\u4e0e\u7d20\u517b\u517c\u5907\u7684\u201c\u4e16\u754c\u516c\u6c11\u201d\u4e0e\u201c\u672a\u6765\u9886\u8896\u201d\uff0c\u8ba9\u6bcf\u4e2a\u5b69\u5b50\u90fd\u7231\u4e0a\u5b66\u4e60\u3001\u5b66\u4f1a\u5b66\u4e60\uff01\",\"title\":\"\u7231\u4e50\u5947\u4e50\u56ed\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u6253\u5f00\u7231\u4e50\u5947\u4e50\u56ed\\\",\\\"\u6211\u60f3\u770b\u7231\u4e50\u5947\u4e50\u56ed\\\",\\\"\u6211\u4eec\u4e00\u8d77\u5b66\u4e60\u82f1\u8bed\u5427\\\",\\\"\u64ad\u653e\u7231\u4e50\u5947\u4e50\u56ed\\\",\\\"\u7231\u4e50\u5947\u4e50\u56ed\u662f\u4ec0\u4e48\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u5531\u5531\u8df3\u8df3\u5b66\u82f1\u8bed\",\"algTrackLog\":\"{\\\"trace_id\\\":\\\"20210924140608593-1226149778\\\",\\\"service_name\\\":\\\"\u7231\u4e50\u5947\u4e50\u56ed\\\",\\\"recall_path\\\":\\\"basic\\\",\\\"query\\\":\\\"\u6211\u8981\u5b66\u6570\u5b66\\\",\\\"scene_id\\\":\\\"22120\\\",\\\"page_num\\\":\\\"\\\",\\\"type\\\":\\\"LINK\\\",\\\"exposure_time\\\":\\\"1632463568837\\\",\\\"score\\\":\\\"0.166607\\\",\\\"query_nlu\\\":\\\"null\\\",\\\"service_id\\\":\\\"2020082826123\\\",\\\"position\\\":\\\"1\\\",\\\"ab_id\\\":\\\"189903\\\",\\\"page_size\\\":\\\"10\\\"}\",\"appId\":\"2020082826123\",\"stsType\":\"LINK\",\"screenShot\":[],\"isOffline\":false,\"applicationId\":\"9b5e213621b5d371dce14d6069745698\",\"stsValue\":\"[\\\"\u7231\u4e50\u5947\u4e50\u56ed\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u6d59\u6c5f\u5929\u732b\u6280\u672f\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001157628730&pkg=com.alibaba.ailabs.genie.webapps&vc=305&miniAppId=144\",\"icon\":\"https://img.alicdn.com/tfs/TB1wBHNbBFR4u4jSZFPXXanzFXa-136-136.png\",\"description\":\"\u5b66\u9f84\u524d\u513f\u7ae5\u7684\u5168\u65b9\u4f4d\u6559\u80b2\uff0c\u4e3a\u5165\u5b66\u524d\u540e\u505a\u597d\u5145\u5206\u51c6\u5907\u3002\",\"title\":\"\u5b66\u524d\u6559\u80b2\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u6253\u5f00\u5b66\u524d\u6559\u80b2\\\",\\\"\u6211\u60f3\u770b\u5b66\u524d\u6559\u80b2\\\",\\\"\u6211\u4eec\u4e00\u8d77\u5b66\u4e60\u5427\\\",\\\"\u64ad\u653e\u5b66\u524d\u6559\u80b2\\\",\\\"\u5b66\u524d\u6559\u80b2\u662f\u4ec0\u4e48\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u5bd3\u6559\u4e8e\u4e50\uff0c\u8ba9\u5b69\u5b50\u5f00\u62d3\u89c6\u91ce\",\"algTrackLog\":\"{\\\"trace_id\\\":\\\"20210924140608593-1226149778\\\",\\\"service_name\\\":\\\"\u5b66\u524d\u6559\u80b2\\\",\\\"recall_path\\\":\\\"basic\\\",\\\"query\\\":\\\"\u6211\u8981\u5b66\u6570\u5b66\\\",\\\"scene_id\\\":\\\"22120\\\",\\\"page_num\\\":\\\"\\\",\\\"type\\\":\\\"LINK\\\",\\\"exposure_time\\\":\\\"1632463568837\\\",\\\"score\\\":\\\"0.1280222\\\",\\\"query_nlu\\\":\\\"null\\\",\\\"service_id\\\":\\\"2020082826042\\\",\\\"position\\\":\\\"6\\\",\\\"ab_id\\\":\\\"189903\\\",\\\"page_size\\\":\\\"10\\\"}\",\"appId\":\"2020082826042\",\"stsType\":\"LINK\",\"screenShot\":[],\"isOffline\":false,\"applicationId\":\"92a9c2991bccca13abcb1e606b16599c\",\"stsValue\":\"[\\\"\u5b66\u524d\u6559\u80b2\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u676d\u5dde\u65ed\u6cca\u6559\u80b2\u79d1\u6280\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001157628730&pkg=com.alibaba.ailabs.genie.webapps&vc=305&miniAppId=218\",\"icon\":\"https://img.alicdn.com/tfs/TB1237zRkL0gK0jSZFtXXXQCXXa-136-136.png\",\"description\":\"\u6653\u9e1f\u7f51\u6821\u7684\u8bfe\u7a0b\u4f53\u7cfb\u8986\u76d63-18\u5c81\u5b66\u5458\uff0c\u81f4\u529b\u4e8e\u8ba9\u66f4\u591a\u4f18\u79c0\u7684\u5b69\u5b50\u4eab\u53d7\u9876\u5c16\u4f18\u8d28\u7684\u5b66\u79d1\u8d44\u6e90\u548c\u5e08\u8d44\uff0c\u6253\u9020\u5c16\u5b50\u751f\u7684\u5b66\u4e60\u4e50\u56ed\u3002\u80a9\u8d1f\u4e3a\u9876\u5c16\u5b66\u5e9c\u8f93\u9001\u66f4\u591a\u4eba\u624d\u7684\u4f7f\u547d\u3002\\n\u6653\u9e1f\u7f51\u6821\u6240\u6709\u8bfe\u7a0b\u5747\u91c7\u53d6\u56fd\u9645\u5148\u8fdb\u6559\u5b66\u6cd5\uff0c\u8ba9\u5b66\u751f\u4e0d\u518d\u6b7b\u8bb0\u786c\u80cc\uff0c\u4f4e\u6548\u52e4\u594b\u3002\",\"title\":\"\u6653\u9e1f\u7f51\u6821\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u6253\u5f00\u6653\u9e1f\u7f51\u6821\\\",\\\"\u6211\u60f3\u770b\u6653\u9e1f\u7f51\u6821\\\",\\\"\u6211\u4eec\u4e00\u8d77\u5b66\u4e60\u5427\\\",\\\"\u64ad\u653e\u6653\u9e1f\u7f51\u6821\\\",\\\"\u6653\u9e1f\u7f51\u6821\u662f\u4ec0\u4e48\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u8ba9\u66f4\u591a\u4f18\u79c0\u7684\u5b69\u5b50\u4eab\u53d7\u9876\u5c16\u4f18\u8d28\u7684\u5b66\u79d1\u8d44\u6e90\u548c\u5e08\u8d44\",\"algTrackLog\":\"{\\\"trace_id\\\":\\\"20210924140608593-1226149778\\\",\\\"service_name\\\":\\\"\u6653\u9e1f\u7f51\u6821\\\",\\\"recall_path\\\":\\\"basic\\\",\\\"query\\\":\\\"\u6211\u8981\u5b66\u6570\u5b66\\\",\\\"scene_id\\\":\\\"22120\\\",\\\"page_num\\\":\\\"\\\",\\\"type\\\":\\\"LINK\\\",\\\"exposure_time\\\":\\\"1632463568837\\\",\\\"score\\\":\\\"0.1065813\\\",\\\"query_nlu\\\":\\\"null\\\",\\\"service_id\\\":\\\"2020082826121\\\",\\\"position\\\":\\\"8\\\",\\\"ab_id\\\":\\\"189903\\\",\\\"page_size\\\":\\\"10\\\"}\",\"appId\":\"2020082826121\",\"stsType\":\"LINK\",\"screenShot\":[],\"isOffline\":false,\"applicationId\":\"0ddf86f556f287b9ce0e175195568e05\",\"stsValue\":\"[\\\"\u6653\u9e1f\u7f51\u6821\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u6d59\u6c5f\u5929\u732b\u6280\u672f\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001157628730&pkg=com.alibaba.ailabs.genie.webapps&vc=305&miniAppId=158\",\"icon\":\"https://img.alicdn.com/tfs/TB1D4nUMbY1gK0jSZTEXXXDQVXa-136-136.png\",\"description\":\"\u7cbe\u9009\u795e\u8bdd\u6545\u4e8b\uff0c\u5448\u73b0\u7ed9\u60a8\u4f18\u79c0\u7684\u6587\u5316\u7cbe\u54c1\uff0c\u8ba9\u5c0f\u670b\u53cb\u4eec\u4ee5\u8f7b\u677e\u6109\u5feb\u7684\u5f62\u5f0f\u4e86\u89e3\u4e16\u754c\u795e\u8bdd\u6545\u4e8b\u3002\",\"title\":\"\u795e\u8bdd\u6545\u4e8b\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u7ed9\u6211\u64ad\u653e\u795e\u8bdd\u6545\u4e8b\\\",\\\"\u5e2e\u6211\u64ad\u653e\u795e\u8bdd\u6545\u4e8b\\\",\\\"\u6253\u5f00\u795e\u8bdd\u6545\u4e8b\\\",\\\"\u6211\u8981\u542c\u795e\u8bdd\u6545\u4e8b\\\",\\\"\u6211\u8981\u770b\u795e\u8bdd\u6545\u4e8b\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u795e\u8bdd\u4f20\u8bf4\u662f\u4e16\u754c\u6587\u5316\u5b9d\u5e93\u4e2d\u4e00\u9897\u707f\u70c2\u7684\u660e\u73e0\",\"algTrackLog\":\"{\\\"trace_id\\\":\\\"20210924140608593-1226149778\\\",\\\"service_name\\\":\\\"\u795e\u8bdd\u6545\u4e8b\\\",\\\"recall_path\\\":\\\"basic\\\",\\\"query\\\":\\\"\u6211\u8981\u5b66\u6570\u5b66\\\",\\\"scene_id\\\":\\\"22120\\\",\\\"page_num\\\":\\\"\\\",\\\"type\\\":\\\"LINK\\\",\\\"exposure_time\\\":\\\"1632463568837\\\",\\\"score\\\":\\\"0.1917923\\\",\\\"query_nlu\\\":\\\"null\\\",\\\"service_id\\\":\\\"2020082826056\\\",\\\"position\\\":\\\"0\\\",\\\"ab_id\\\":\\\"189903\\\",\\\"page_size\\\":\\\"10\\\"}\",\"appId\":\"2020082826056\",\"stsType\":\"LINK\",\"screenShot\":[],\"isOffline\":false,\"applicationId\":\"c2495959474f0c4a45b724843f9b246a\",\"stsValue\":\"[\\\"\u795e\u8bdd\u6545\u4e8b\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u6d59\u6c5f\u5929\u732b\u6280\u672f\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001168608197&pkg=com.alibaba.ailabs.genie.webapps&vc=423&genieAppId=2020082832008\",\"icon\":\"https://img.alicdn.com/tfs/TB1S5.FdA9l0K4jSZFKXXXFjpXa-136-136.png\",\"description\":\"\u56f4\u7ed5\u52a8\u7269\u3001\u690d\u7269\u3001\u4eba\u7269\u3001\u81ea\u7136\u7b49\u63a8\u8350\u591a\u5a92\u4f53\u767e\u79d1\u77e5\u8bc6\uff0c\u548c\u5929\u732b\u7cbe\u7075\u4e00\u8d77\u63a2\u7d22\u5927\u5343\u4e16\u754c\u3002\",\"title\":\"\u7cbe\u7075\u767e\u79d1\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u6709\u4ec0\u4e48\u6709\u8da3\u7684\u767e\u79d1\u77e5\u8bc6\\\",\\\"\u6765\u4e2a\u6709\u8da3\u7684\u767e\u79d1\u77e5\u8bc6\\\",\\\"\u8bb2\u4e2a\u767e\u79d1\u77e5\u8bc6\\\",\\\"\u7ed9\u6211\u64ad\u653e\u7cbe\u7075\u767e\u79d1\\\",\\\"\u5e2e\u6211\u64ad\u653e\u7cbe\u7075\u767e\u79d1\\\",\\\"\u6253\u5f00\u7cbe\u7075\u767e\u79d1\\\",\\\"\u6211\u8981\u542c\u7cbe\u7075\u767e\u79d1\\\",\\\"\u6211\u8981\u770b\u7cbe\u7075\u767e\u79d1\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u4e00\u8d77\u63a2\u7d22\u5927\u5343\u4e16\u754c\",\"algTrackLog\":\"{\\\"trace_id\\\":\\\"20210924140608593-1226149778\\\",\\\"service_name\\\":\\\"\u7cbe\u7075\u767e\u79d1\\\",\\\"recall_path\\\":\\\"basic\\\",\\\"query\\\":\\\"\u6211\u8981\u5b66\u6570\u5b66\\\",\\\"scene_id\\\":\\\"22120\\\",\\\"page_num\\\":\\\"\\\",\\\"type\\\":\\\"MINIAPP\\\",\\\"exposure_time\\\":\\\"1632463568837\\\",\\\"score\\\":\\\"0.1262\\\",\\\"query_nlu\\\":\\\"null\\\",\\\"service_id\\\":\\\"2020082832008\\\",\\\"position\\\":\\\"7\\\",\\\"ab_id\\\":\\\"189903\\\",\\\"page_size\\\":\\\"10\\\"}\",\"appId\":\"2020082832008\",\"stsType\":\"MINIAPP\",\"screenShot\":[\"https://img.alicdn.com/tfs/TB1fdRgMVY7gK0jSZKzXXaikpXa-1280-800.png,https://img.alicdn.com/tfs/TB1gZpoMWL7gK0jSZFBXXXZZpXa-1280-800.png,https://img.alicdn.com/tfs/TB1TzMfXiDsXe8jSZR0XXXK6FXa-1280-800.png,https://img.alicdn.com/tfs/TB1JjhsM7Y2gK0jSZFgXXc5OFXa-1280-800.png\"],\"isOffline\":false,\"packageName\":\"com.alibaba.ailabs.genie.webapps_2021001168608197\",\"applicationId\":\"e5f74799ca10f43d2eda6b531b6b4813\",\"stsValue\":\"[\\\"\u7cbe\u7075\u767e\u79d1\\\"]\"}],\"searchAppList\":[{\"author\":\"[{\\\"icon\\\":\\\"//ailabs.alibabausercontent.com/images/200bf48b694b0744e3e1785dfdcdade7/1599817750730.png\\\",\\\"name\\\":\\\"\u5e7f\u5dde\u65b0\u82bd\u6559\u80b2\u79d1\u6280\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001157628730&pkg=com.alibaba.ailabs.genie.webapps&vc=305&miniAppId=223\",\"icon\":\"https://ailabs.alibabausercontent.com/images/200bf48b694b0744e3e1785dfdcdade7/1599816803525.png\",\"description\":\"\u540c\u6b65\u8bfe\u7a0b\u89c6\u9891\uff0c\u6309\u6bcf\u8bfe\u7684\u5b66\u4e60\u91cd\u70b9\u3001\u5b66\u4e60\u76ee\u6807\u3001\u77e5\u8bc6\u7cbe\u8bb2\u3001\u5178\u578b\u9898\uff0c\u771f\u9898\u94fe\u63a5\u6a21\u5757\u6765\u8bb2\uff0c\u62d3\u5c55\u89e3\u6790\u548c\u70b9\u62e8\uff0c\u8ba9\u5b66\u751f\u5feb\u901f\u638c\u63e1\u6bcf\u8bfe\u7684\u7cbe\u9ad3\uff0c\u5e76\u7ed3\u5408\u9898\u76ee\u5de9\u56fa\u77e5\u8bc6\u3002\",\"title\":\"\u5c0f\u5b66\u6570\u5b66\u63d0\u5347\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u5929\u732b\u7cbe\u7075\u5c0f\u5b66\u6570\u5b66\u63d0\u5347\\\",\\\"\u5929\u732b\u7cbe\u7075\u6253\u5f00\u5c0f\u5b66\u6570\u5b66\u63d0\u5347\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u6d77\u91cf\u8bfe\u7a0b\uff0c\u5feb\u901f\u63d0\u5347\uff01\",\"appId\":\"2020091152005\",\"stsType\":\"LINK\",\"screenShot\":[\"//ailabs.alibabausercontent.com/images/200bf48b694b0744e3e1785dfdcdade7/1599817578191.JPG\",\"//ailabs.alibabausercontent.com/images/200bf48b694b0744e3e1785dfdcdade7/1599817584112.JPG\",\"//ailabs.alibabausercontent.com/images/200bf48b694b0744e3e1785dfdcdade7/1599817588993.JPG\",\"//ailabs.alibabausercontent.com/images/200bf48b694b0744e3e1785dfdcdade7/1599817661914.JPG\"],\"isOffline\":false,\"stsValue\":\"[\\\"\u5c0f\u5b66\u6570\u5b66\u63d0\u5347\\\"]\"},{\"author\":\"[{\\\"icon\\\":\\\"//ailabs.alibabausercontent.com/images/1bff39d1c198ac13abb74acc6fa3549a/1600225263049.jpg\\\",\\\"name\\\":\\\"\u5317\u4eac\u5c0f\u55e8\u4e50\u5b66\u79d1\u6280\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"youxuemaomath://com.miaokids.math/applist?pkg=com.miaokids.math\",\"icon\":\"https://ailabs.alibabausercontent.com/images/1bff39d1c198ac13abb74acc6fa3549a/1600224225740.png\",\"downloadUrl\":\"https://ar-platform.oss-cn-shanghai.aliyuncs.com/images/1bff39d1c198ac13abb74acc6fa3549a/1600223103633.apk\",\"description\":\"\u201c\u4f18\u5b66\u732b\u6570\u5b66\u201c\u662f\u4e00\u6b3e\u9762\u54112-8\u5c81\u513f\u7ae5\u7684AI\u667a\u80fd\u4e92\u52a8\u5b66\u4e60\u8f6f\u4ef6\u3002\u5728\u7ae5\u8da3\u7684\u52a8\u753b\u5f62\u8c61\u5e26\u9886\u4e0b\uff0c\u4ee5AI\u4e92\u52a8\u76f4\u64ad\u4e3a\u4e3b\u7ebf\uff0c\u914d\u5408\u6e38\u620f\u5316\u52a8\u624b\u6e38\u620f\uff0c\u6fc0\u53d1\u5c0f\u670b\u53cb\u7684\u6570\u5b66\u5b66\u4e60\u5174\u8da3\u3002\u901a\u8fc76\u5927\u80fd\u529b\uff08\u6570\u5b66\u903b\u8f91\u3001\u7a7a\u95f4\u611f\u77e5\u3001\u8bed\u8a00\u3001\u8eab\u4f53\u4e0e\u8fd0\u52a8\u3001\u827a\u672f\u3001\u793e\u4f1a\u4e0e\u60c5\u611f\uff09\u9886\u57df\u7684\u57f9\u80b2\uff0c\u5f15\u9886\u5b69\u5b50\u80fd\u591f\u81ea\u4e3b\u5b66\u4e60\uff0c\u5efa\u6784\u81ea\u5df1\u7684\u6570\u5b66\u601d\u7ef4\u4e16\u754c\u3002APP\u4e2d\u6d89\u53ca\u7684\u6570\u5b66\u57fa\u7840\u70b9\u548c3000+\u9898\u76ee\u7ec3\u4e60\uff0c\u5747\u4f9d\u636e\u5e7c\u513f\u56ed\u5927\u7eb2\u6539\u7f16\uff0c\u5e76\u6309\u7167\u5b66\u9f84\uff08\u4e2d\u73ed\u3001\u5927\u73ed\u3001\u5b66\u524d\u73ed\u3001\u5c0f\u5b66\u9762\u8bd5\u7b49\uff09\u8fdb\u884c\u77e5\u8bc6\u70b9\u5212\u5206\u53ca\u96be\u6613\u7a0b\u5ea6\u8bbe\u5b9a\u3002\u4f18\u5b66\u732b\u6570\u5b66\u65e8\u5728\u8ba9\u6570\u5b66\u66f4\u6709\u8da3\uff0c\u8ba9\u6559\u80b2\u66f4\u771f\u5b9e\uff01\",\"title\":\"\u4f18\u5b66\u732b\u6570\u5b66\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u4f18\u5b66\u732b\uff0c\u6765\u70b9\u6e38\u620f\\\",\\\"\u4f18\u5b66\u732b\uff0c\u6765\u70b9\u8bfe\u7a0b\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u6570\u5b66\u601d\u7ef4\u52a8\u624b\u7ec3\uff0c\u6fc0\u53d1\u513f\u7ae5\u6570\u5b66\u601d\u7ef4\u5174\u8da3\uff01\",\"appId\":\"2020091636010\",\"stsType\":\"NATIVE\",\"screenShot\":[\"//ailabs.alibabausercontent.com/images/1bff39d1c198ac13abb74acc6fa3549a/1600224234420.jpg\",\"//ailabs.alibabausercontent.com/images/1bff39d1c198ac13abb74acc6fa3549a/1600224239684.jpg\",\"//ailabs.alibabausercontent.com/images/1bff39d1c198ac13abb74acc6fa3549a/1600224243243.jpg\",\"//ailabs.alibabausercontent.com/images/1bff39d1c198ac13abb74acc6fa3549a/1600224245866.jpg\"],\"apkVersionCode\":336,\"isOffline\":false,\"packageName\":\"com.miaokids.math\",\"stsValue\":\"[\\\"\u4f18\u5b66\u732b\u6570\u5b66\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u9ea6\u601d\u52a0\uff08\u5317\u4eac\uff09\u6559\u80b2\u79d1\u6280\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001157628730&pkg=com.alibaba.ailabs.genie.webapps&vc=305&miniAppId=117\",\"icon\":\"https://img.alicdn.com/tfs/TB1Ij.hMXP7gK0jSZFjXXc5aXXa-136-136.png\",\"description\":\"\u9ea6\u601d\u52a0\u6570\u5b66\u662f\u7531\u5468\u6625\u8354\u6559\u6388\u9886\u8854\uff08\u5468\u6625\u8354\u6559\u5e08\u662f\u4e2d\u56fd\u6570\u5b66\u5965\u6797\u5339\u514b\u9996\u6279\u9ad8\u7ea7\u6559\u7ec3\u5458\uff0c\u534e\u7f57\u5e9a\u91d1\u676f\u5c11\u5e74\u6570\u5b66\u9080\u8bf7\u8d5b\u4e3b\u8bd5\u59d4\u5458\uff0c\u51e0\u5341\u540d\u6765\u81ea\u5317\u5e08\u5927\u5b9e\u9a8c\u5c0f\u5b66\u3001\u5317\u5927\u9644\u5c0f\u7b49\u5168\u56fd\u7701\u4f1a\u57ce\u5e02\u6700\u4f18\u79c0\u7684\u4e00\u7ebf\u8001\u5e08\u5171\u540c\u7ec4\u6210\u7684\u6559\u7814\u56e2\u961f\u5171\u540c\u6253\u9020\uff0c\u66f4\u591a\u7684\u5f15\u5165\u751f\u6d3b\u573a\u666f,\u8ba9\u5c0f\u670b\u53cb\u53ef\u4ee5\u66f4\u5bb9\u6613\u5730\u63a5\u53d7\u6570\u5b66\u903b\u8f91\uff0c5\u5206\u949f\u5c31\u80fd\u5b66\u4f1a\u4e00\u4e2a\u77e5\u8bc6\u70b9\u3002\u9ea6\u601d\u52a0\u6570\u5b66\u7684\u6240\u6709\u8bfe\u7a0b\u5747\u5df2\u5728\u7ebf\u4e0b\u5b66\u6821\u8fdb\u884c\u5b9e\u9645\u8bfe\u5802\u7684\u6d4b\u8bd5\uff0c\u901a\u8fc7\u5bf9\u5b66\u751f\u548c\u8001\u5e08\u7684\u53cd\u9988\u610f\u89c1\u4e0d\u65ad\u8fdb\u4fee\u6539\u3001\u5b8c\u5584\uff0c\u8ba9\u5b69\u5b50\u5b66\u7684\u61c2\uff0c\u5b66\u5f97\u5feb\uff0c\u8ba9\u5bb6\u957f\u6ee1\u610f\u3002\",\"title\":\"\u9ea6\u601d\u52a0\u6570\u5b66\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u7ed9\u6211\u64ad\u653e\u9ea6\u601d\u52a0\u6570\u5b66\\\",\\\"\u5e2e\u6211\u64ad\u653e\u9ea6\u601d\u52a0\u6570\u5b66\\\",\\\"\u6253\u5f00\u9ea6\u601d\u52a0\u6570\u5b66\\\",\\\"\u6211\u8981\u542c\u9ea6\u601d\u52a0\u6570\u5b66\\\",\\\"\u6211\u8981\u770b\u9ea6\u601d\u52a0\u6570\u5b66\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u52a8\u753b\u5fae\u8bfe \u6709\u8da3\u7231\u5b66\",\"appId\":\"2020082826016\",\"stsType\":\"LINK\",\"screenShot\":[\"https://img.alicdn.com/tfs/TB16KfaLBr0gK0jSZFnXXbRRXXa-1024-600.png,\\nhttps://img.alicdn.com/tfs/TB174GULuL2gK0jSZPhXXahvXXa-1024-600.png,\\nhttps://img.alicdn.com/tfs/TB1NIu6LAY2gK0jSZFgXXc5OFXa-1024-600.png,\\nhttps://img.alicdn.com/tfs/TB1AZO6LAY2gK0jSZFgXXc5OFXa-1024-600.png\"],\"isOffline\":false,\"applicationId\":\"1375744a179a8c47439e78675187afff\",\"stsValue\":\"[\\\"\u9ea6\u601d\u52a0\u6570\u5b66\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u6d59\u6c5f\u5929\u732b\u6280\u672f\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001157628730&pkg=com.alibaba.ailabs.genie.webapps&vc=305&miniAppId=133\",\"icon\":\"https://img.alicdn.com/tfs/TB1va8dXypE_u4jSZKbXXbCUVXa-136-136.png\",\"description\":\"\u5c0f\u5b66\u6570\u5b66\u5165\u95e8\uff0c\u5b9e\u73b0\u6570\u5b66\u542f\u8499\uff0c\u4e3a\u5b69\u5b50\u7684\u6570\u5b66\u4e4b\u8def\u6253\u4e0b\u575a\u5b9e\u57fa\u7840\u3002\",\"title\":\"\u5c0f\u5b66\u6570\u5b66\u57fa\u7840\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u966a\u6211\u5b66\u5c0f\u5b66\u6570\u5b66\u57fa\u7840\u5427\\\",\\\"\u6211\u60f3\u5b66\u5c0f\u5b66\u6570\u5b66\u57fa\u7840\\\",\\\"\u5c0f\u5b66\u6570\u5b66\u57fa\u7840\u96be\u5417\uff1f\\\",\\\"\u6253\u5f00\u5c0f\u5b66\u6570\u5b66\u57fa\u7840\\\",\\\"\u6765\u4e2a\u5c0f\u5b66\u6570\u5b66\u57fa\u7840\u77e5\u8bc6\\\",\\\"\u6211\u8981\u770b\u5c0f\u5b66\u6570\u5b66\u57fa\u7840\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u5c0f\u5b66\u6570\u5b66\u542f\u8499\",\"appId\":\"2020082826031\",\"stsType\":\"LINK\",\"screenShot\":[],\"isOffline\":false,\"applicationId\":\"ac050fa1634dbb3840b5436d085e96f3\",\"stsValue\":\"[\\\"\u5c0f\u5b66\u6570\u5b66\u57fa\u7840\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u4e0a\u6d77\u5c0f\u9ea6\u4e92\u52a8\u4f01\u4e1a\u53d1\u5c55\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001163660838&pkg=com.alibaba.ailabs.genie.webapps&vc=401&genieAppId=2020082832047\",\"icon\":\"https://img.alicdn.com/tfs/TB1aOwPMbH1gK0jSZFwXXc7aXXa-136-136.png\",\"description\":\"\u8fd9\u662f\u4e00\u6b3e\u7531\u5c0f\u9ea6\u4e92\u52a8\u6253\u9020\u7684,\u4f7f\u7528\u6237\u80fd\u8fdb\u884c\u5728\u7ebf\u8bfe\u5916\u8f85\u5bfc\u7684\u5c0f\u7a0b\u5e8f\u3002\",\"title\":\"\u4f34\u8bfb\u8ba1\u5212\",\"voiceDisposition\":\"{\\\"new\\\":[],\\\"old\\\":[]}\",\"subTitle\":\"\u966a\u4f34\u5b69\u5b50\u7684\u5b66\u4e60\u548c\u6210\u957f\",\"appId\":\"2020082832047\",\"stsType\":\"MINIAPP\",\"screenShot\":[\"https://img.alicdn.com/tfs/TB1CDKGmsKfxu4jSZPfXXb3dXXa-1024-605.png\",\"https://img.alicdn.com/tfs/TB1GbkKKNv1gK0jSZFFXXb0sXXa-1007-595.png\",\"https://img.alicdn.com/tfs/TB1RfpLgicKOu4jSZKbXXc19XXa-1018-604.png\",\"https://img.alicdn.com/tfs/TB1QqcHKO_1gK0jSZFqXXcpaXXa-1022-605.png\"],\"isOffline\":false,\"packageName\":\"com.alibaba.ailabs.genie.webapps_2021001163660838_1594022649238\",\"applicationId\":\"41191cf60e443d5f2794f8a682f869d1\",\"stsValue\":\"[\\\"\u4f34\u8bfb\u8ba1\u5212\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u4e0a\u6d77\u5c0f\u9ea6\u4e92\u52a8\u4f01\u4e1a\u53d1\u5c55\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001162654042&pkg=com.alibaba.ailabs.genie.webapps&vc=401&genieAppId=2020082832046\",\"icon\":\"https://img.alicdn.com/tfs/TB1RzP5Xkcx_u4jSZFlXXXnUFXa-136-136.png\",\"description\":\"\u62cd\u7167\u641c\u9898\u662f\u4e00\u6b3e\u7531\u5c0f\u9ea6\u4e92\u52a8\u6253\u9020\u7684,\u65e8\u5728\u4e3a\u5929\u732b\u7cbe\u7075\u667a\u80fd\u97f3\u7bb1\u7684\u7528\u6237\u63d0\u4f9b\u901a\u8fc7\u62cd\u7167\u8fdb\u884c\u5728\u7ebf\u641c\u7d22\u7b54\u6848\u7684\u5c0f\u7a0b\u5e8f\u3002\",\"title\":\"\u62cd\u7167\u641c\u9898\",\"voiceDisposition\":\"{\\\"new\\\":[],\\\"old\\\":[]}\",\"subTitle\":\"\u9898\u76ee\u4e0d\u4f1a\u505a\uff1f\u5feb\u6765\u641c\u4e00\u641c\",\"appId\":\"2020082832046\",\"stsType\":\"MINIAPP\",\"screenShot\":[\"https://img.alicdn.com/tfs/TB1BmSMbTM11u4jSZPxXXahcXXa-800-468.jpg,https://img.alicdn.com/tfs/TB11SlGLuL2gK0jSZPhXXahvXXa-800-468.jpg,https://img.alicdn.com/tfs/TB1CoSecaNj0u4jSZFyXXXgMVXa-800-468.jpg,https://img.alicdn.com/tfs/TB1NoNBXzMZ7e4jSZFOXXX7epXa-800-468.jpg\"],\"isOffline\":false,\"packageName\":\"com.alibaba.ailabs.genie.webapps_2021001162654042_0.0.5\",\"applicationId\":\"3238e8d42cef66e799abdd118c7237b2\",\"stsValue\":\"[\\\"\u62cd\u7167\u641c\u9898\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u5e7f\u5dde\u7231\u95ee\u5c0f\u55b5\u4fe1\u606f\u79d1\u6280\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001157628730&pkg=com.alibaba.ailabs.genie.webapps&vc=305&miniAppId=222\",\"icon\":\"https://img.alicdn.com/tfs/TB1kyLSeSslXu8jSZFuXXXg7FXa-136-136.png\",\"description\":\"\u7231\u95ee\u5c0f\u55b5\u662f\u4e2d\u56fd\u7b2c\u4e00\u5bb62-8\u5c81\u513f\u7ae5\u540c\u4f34\u578b\u539f\u521b\u52a8\u753bIP\u7d20\u8d28\u6559\u80b2\u54c1\u724c\u3002\\n\u7231\u95ee\u5c0f\u55b5\u4f9d\u6258\u56fd\u9645\u5148\u8fdb\u513f\u7ae5\u53d1\u5c55\u7406\u8bba\uff0c\u6839\u636e\u513f\u7ae5\u4e0d\u540c\u9636\u6bb5\u8eab\u5fc3\u53d1\u5c55\u7684\u7279\u70b9\uff0c\u81ea\u4e3b\u7814\u53d1\u4e86\u6570\u5b66\u601d\u7ef4\u3001\u8bed\u6587\u57fa\u7840\u3001\u82f1\u8bed\u542f\u8499\u3001\u81ea\u7136\u79d1\u5b66\u7b49\u7efc\u5408\u76ca\u667a\u53ca\u901a\u8bc6\u6559\u80b2\u8bfe\u7a0b\u3002\",\"title\":\"\u7231\u95ee\u5c0f\u55b5\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u6253\u5f00\u7231\u95ee\u5c0f\u55b5\\\",\\\"\u7231\u95ee\u5c0f\u55b5\u600e\u4e48\u73a9\\\",\\\"\u4e00\u8d77\u6765\u73a9\u7231\u95ee\u5c0f\u55b5\\\",\\\"\u6559\u6211\u7231\u95ee\u5c0f\u55b5\u600e\u4e48\u7528\\\",\\\"\u7231\u95ee\u5c0f\u55b5\u662f\u4ec0\u4e48\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u8d8a\u95ee\u8d8a\u806a\u660e\u54e6\",\"appId\":\"2020082826125\",\"stsType\":\"LINK\",\"screenShot\":[],\"isOffline\":false,\"applicationId\":\"17949ad2f975184bf37e85c8fdacff41\",\"stsValue\":\"[\\\"\u7231\u95ee\u5c0f\u55b5\\\"]\"},{\"author\":\"[{\\\"icon\\\":\\\"//ailabs.alibabausercontent.com/images/8371979223147775c9e22e45d0b4635b/1604072421033.png\\\",\\\"name\\\":\\\"\u540c\u684c\u4e00\u767e\\\"}]\",\"actionUrl\":\"tz100hd://com.tmallmateali/splash?pkg=com.tmallmateali\",\"icon\":\"https://ailabs.alibabausercontent.com/images/8371979223147775c9e22e45d0b4635b/1604071891680.png\",\"downloadUrl\":\"https://ar-platform.oss-cn-shanghai.aliyuncs.com/images/8371979223147775c9e22e45d0b4635b/1608528893786/app-release_110_1_\u5929\u732b_sign.apk\",\"description\":\"1.\u4e00\u5bf9\u4e00\u5728\u7ebf\u8f85\u5bfc\uff1a\u8ba9\u6bcf\u4e2a\u5b69\u5b50\u90fd\u4eab\u80fd\u6709\u4e0e\u540d\u5e08\u9762\u5bf9\u9762\u7684\u5b66\u4e60\u673a\u4f1a\uff01 \\n2.\u4f5c\u4e1a\u8f85\u5bfc\uff1a\u6211\u4eec\u66f4\u6ce8\u91cd\u6559\u4f1a\u5b69\u5b50\u4eec\u89e3\u9898\u8fc7\u7a0b\uff01 \\n3.\u540c\u6b65\u8bfe\u5802\uff1a\u5305\u542b\u4e2d\u5c0f\u5b66\u3001\u521d\u9ad8\u4e2d\u6240\u6709\u8bfe\u7a0b\uff0c\u8986\u76d6\u5168\u56fd\u5404\u5730\u533a\u4e0d\u540c\u7248\u672c\u3002\u5982\uff1a\u4eba\u6559\u7248\u3001\u9c81\u6559\u7248\u3001\u82cf\u6559\u7248\u7b49\u3002 \\n4.\u6a21\u62df\u8003\u8bd5\uff1a\u6db5\u76d6\u5386\u5e74\u6765\u4e2d\u3001\u9ad8\u8003\u8003\u8bd5\u771f\u9898\uff0c\u5404\u8bfe\u7a0b\u5355\u5143\u6d4b\u8bd5\u3001\u671f\u4e2d\u671f\u672b\u8bd5\u5377\u53ca\u6a21\u62df\u8003\u8bd5\u8bd5\u5377\u3002\u5728\u7ebf\u505a\u9898\uff0c\u7cfb\u7edf\u5224\u5377\u3002\",\"title\":\"\u540c\u684c\u4e00\u767e\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u540c\u684c\u4e00\u767e\\\",\\\"\u6253\u5f00\u540c\u684c\u4e00\u767e\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u8ba9\u6bcf\u4e00\u4e2a\u5b66\u751f\u90fd\u80fd\u5f97\u5230\u540d\u5e08\u8f85\u5bfc\uff01\",\"appId\":\"2020103078012\",\"stsType\":\"NATIVE\",\"screenShot\":[\"//ailabs.alibabausercontent.com/images/8371979223147775c9e22e45d0b4635b/1604072180988.png\",\"//ailabs.alibabausercontent.com/images/8371979223147775c9e22e45d0b4635b/1604072193443.png\",\"//ailabs.alibabausercontent.com/images/8371979223147775c9e22e45d0b4635b/1604072200733.png\",\"//ailabs.alibabausercontent.com/images/8371979223147775c9e22e45d0b4635b/1604072221876.png\"],\"apkVersionCode\":6,\"isOffline\":false,\"packageName\":\"com.tmallmateali\",\"stsValue\":\"[\\\"\u540c\u684c\u4e00\u767e\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u5317\u4eac\u4f5c\u4e1a\u76d2\u5b50\u79d1\u6280\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2019060565472502&pkg=com.alibaba.ailabs.genie.webapps&vc=155&genieAppId=2020082832020\",\"icon\":\"https://img.alicdn.com/tfs/TB1TK..dP39YK4jSZPcXXXrUFXa-136-136.png\",\"description\":\"\u5c0f\u76d2\u8bfe\u5802\u662f\u4f5c\u4e1a\u76d2\u5b50\u65d7\u4e0b\u9ad8\u7aef\u5728\u7ebf\u6559\u80b2\u7c7b\u8bfe\u7a0b\u4ea7\u54c1\uff0c\u9488\u5bf9\u5c0f\u5b66\u751f\u8bed\u6570\u5916\u5b66\u79d1\uff0c\u5c06\u4f20\u7edf\u76f4\u64ad\u4e0eAI\u667a\u80fd\u4e92\u52a8\u76f8\u7ed3\u5408\uff0c\u642d\u914d\u8bfe\u524d\u8bfe\u540e\u5c0f\u73ed\u8f85\u5bfc\uff0c\u901a\u8fc7\u7ebf\u4e0a\u6559\u80b2\u7684\u65b9\u5f0f\u4e3a\u5c0f\u5b66\u751f\u63d0\u4f9b\u4e13\u5c5e\u6559\u5b66\u670d\u52a1\",\"title\":\"\u5c0f\u76d2\u8bfe\u5802\",\"voiceDisposition\":\"{\\\"new\\\":[],\\\"old\\\":[]}\",\"subTitle\":\"\u5f00\u542f\u601d\u7ef4\u7684\u5947\u5999\u4e4b\u65c5\",\"appId\":\"2020082832020\",\"stsType\":\"MINIAPP\",\"screenShot\":[\"https://img.alicdn.com/tfs/TB1sQCkpbj1gK0jSZFuXXcrHpXa-1024-600.png\",\"https://img.alicdn.com/tfs/TB1hwuepXY7gK0jSZKzXXaikpXa-1024-600.png\",\"https://img.alicdn.com/tfs/TB1sb5lpa61gK0jSZFlXXXDKFXa-1024-600.png\",\"https://img.alicdn.com/tfs/TB1Rd6LoubviK0jSZFNXXaApXXa-1024-600.png\"],\"isOffline\":false,\"packageName\":\"com.alibaba.ailabs.genie.webapps_2019060565472502\",\"applicationId\":\"32e3a3b25df264e66069c4c8f6a6ae87\",\"stsValue\":\"[\\\"\u5c0f\u76d2\u8bfe\u5802\\\"]\"},{\"author\":\"[{\\\"icon\\\":\\\"//ailabs.alibabausercontent.com/images/e3ad1e95332cceed5043c6920c2d48cf/1623141966075.png\\\",\\\"name\\\":\\\"\u6d2a\u6069\u6559\u80b2\\\"}]\",\"actionUrl\":\"genie://com.alibaba.genie.proxy/launch?pkg=com.ihuman.imath&aligenieCloudApp=screenOrientation%3Dhorizontal%26appId%3D2021060894015%26appname%3D%E6%B4%AA%E6%81%A9%E6%80%9D%E7%BB%B4%26pkgname%3Dcom.ihuman.imath%26bgs%3Dhttps%3A%2F%2Fimg.alicdn.com%2Fimgextra%2Fi4%2FO1CN018ggDj520Nqze2l2UR_%21%216000000006838-0-tps-1080-800.jpg%40%40%40https%3A%2F%2Fimg.alicdn.com%2Ftfs%2FTB1ylGVllBh1e4jSZFhXXcC9VXa-1080-800.jpg%40%40%40https%3A%2F%2Fimg.alicdn.com%2Ftfs%2FTB1wlGVllBh1e4jSZFhXXcC9VXa-1080-800.jpg\",\"icon\":\"https://ailabs.alibabausercontent.com/images/e3ad1e95332cceed5043c6920c2d48cf/1623141986858.png\",\"downloadUrl\":\"https://ailabs.alibabausercontent.com/largeFile/1630490346027_\u5929\u732b\u7cbe\u7075\u6d2a\u6069\u601d\u7ef45.0.20901.apk\",\"description\":\"\u300a\u6d2a\u6069\u601d\u7ef4\u300bApp\uff0c\u6bcf\u5929\u5341\u5206\u949f\uff0c\u8da3\u5473\u5b66\u601d\u7ef4\u3002\\n\u7ae5\u771f\u7684\u966a\u4f34\u5f0f\u6559\u5b66\u548c\u8da3\u5473\u4e92\u52a8\u4f53\u9a8c\u5c06\u62bd\u8c61\u7684\u6570\u7406\u601d\u7ef4\u5f62\u8c61\u5316\uff0c\u79d1\u5b66\u5206\u9f84\u7684\u5185\u5bb9\u4f53\u7cfb\uff0c\u7531\u6d45\u5165\u6df1\uff0c\u6ee1\u8db3\u5b69\u5b50\u6570\u7406\u542f\u8499\u3001\u57fa\u7840\u5de9\u56fa\u3001\u601d\u7ef4\u62d3\u5c55\u7b49\u65b9\u9762\u7684\u4e0d\u540c\u9700\u6c42\u3002\u878d\u6c47\u73a9\u3001\u5b66\u3001\u6d4b\u3001\u7528\u3001\u7ed3\u7b49\u73af\u8282\uff0c\u6253\u9020\u51fa\u5b8c\u6574\u7684\u5b66\u4e60\u95ed\u73af\u3002\u901a\u8fc7\u52a8\u753b\u8bb2\u89e3\u3001\u771f\u4eba\u6559\u5b66\u3001\u8da3\u5473\u4e92\u52a8\u3001\u4eb2\u5b50\u89c6\u9891\u7b49\u5f62\u5f0f\uff0c\u63a2\u7d22\u6570\u7406\u77e5\u8bc6\u5728\u5404\u79cd\u573a\u666f\u4e2d\u7684\u5e94\u7528\uff0c\u57f9\u517b\u5b69\u5b50\u7684\u597d\u5947\u5fc3\u548c\u52e4\u4e8e\u601d\u8003\u7684\u4e60\u60ef\uff0c\u5e2e\u52a9\u5c0f\u670b\u53cb\u4ece\u5177\u8c61\u5230\u62bd\u8c61\u5145\u5206\u7406\u89e3\u6570\u7406\u6982\u5ff5\uff0c\u57f9\u517b\u6570\u611f\u4e0e\u6570\u7406\u601d\u7ef4\u80fd\u529b\u3002\\n\\n\u300a\u6d2a\u6069\u601d\u7ef4\u300b\u7684\u542f\u8499\u4f53\u7cfb\u6db5\u76d6\u6570\u4e0e\u91cf\u3001\u6570\u8fd0\u7b97\u3001\u51e0\u4f55\u4e0e\u7a7a\u95f4\u3001\u7efc\u5408\u601d\u7ef4\u56db\u5927\u677f\u5757\uff0c\u6253\u9020\u591a\u7ef4\u5ea6\u513f\u7ae5\u6570\u611f\u4e0e\u6570\u7406\u542f\u8499\u6559\u80b2\u4f53\u7cfb\uff0c\u5168\u9762\u57f9\u517b\u5b69\u5b50\u7684\u601d\u7ef4\u80fd\u529b\u548c\u601d\u8003\u4e60\u60ef\u3002\\n\",\"title\":\"\u6d2a\u6069\u601d\u7ef4\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u6d2a\u6069\u601d\u7ef4\\\",\\\"\u6253\u5f00\u6d2a\u6069\u601d\u7ef4\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u6bcf\u5929\u5341\u5206\u949f\uff0c\u8da3\u5473\u5b66\u601d\u7ef4\",\"appId\":\"2021060894015\",\"stsType\":\"NATIVE\",\"screenShot\":[\"//ailabs.alibabausercontent.com/images/e3ad1e95332cceed5043c6920c2d48cf/1623141789403.jpg\",\"//ailabs.alibabausercontent.com/images/e3ad1e95332cceed5043c6920c2d48cf/1623141793266.jpg\",\"//ailabs.alibabausercontent.com/images/e3ad1e95332cceed5043c6920c2d48cf/1623141796347.jpg\",\"//ailabs.alibabausercontent.com/images/e3ad1e95332cceed5043c6920c2d48cf/1623141800014.jpg\"],\"apkVersionCode\":5000200,\"isOffline\":false,\"packageName\":\"com.ihuman.imath\",\"stsValue\":\"[\\\"\u6d2a\u6069\u601d\u7ef4\\\"]\"},{\"author\":\"[{\\\"icon\\\":\\\"//ailabs.alibabausercontent.com/images/e3ad1e95332cceed5043c6920c2d48cf/1623332695334.png\\\",\\\"name\\\":\\\"\u6d59\u6c5f\u5929\u732b\u6280\u672f\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"genie://com.alibaba.genie.tpl/page/tpl?link=http://ailabs-iot.aligenie.com/tpl/bundles/bundle-c8fcf10097177b5a21ae8019a47b7aca.js&renderData=%7B%22dataSource%22%3A%7B%22keyword%22%3A%22%E5%9B%9B%E5%88%99%E8%BF%90%E7%AE%97%22%7D%7D&pkg=com.alibaba.ailabs.genie.webapps&vc=435&appId=tpl9999009\",\"icon\":\"https://img.alicdn.com/tfs/TB1EMmgMEH1gK0jSZSyXXXtlpXa-136-136.png\",\"description\":\"\u53e3\u7b97\u73a9\u56db\u5219\u8fd0\u7b97\uff0c\u5b66\u6570\u5b66\u66f4\u7b80\u5355\u3002\u52a0\u51cf\u4e58\u9664\uff0c\u4e00\u6b65\u5230\u4f4d\",\"title\":\"\u56db\u5219\u8fd0\u7b97\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u966a\u6211\u5b66\u56db\u5219\u8fd0\u7b97\u5427\\\",\\\"\u6211\u60f3\u5b66\u56db\u5219\u8fd0\u7b97\\\",\\\"\u56db\u5219\u8fd0\u7b97\u96be\u5417\uff1f\\\",\\\"\u6253\u5f00\u56db\u5219\u8fd0\u7b97\\\",\\\"\u6765\u4e2a\u56db\u5219\u8fd0\u7b97\u77e5\u8bc6\\\",\\\"\u6211\u8981\u770b\u56db\u5219\u8fd0\u7b97\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u56db\u5219\u8fd0\u7b97\u7684\u53e3\u7b97\",\"appId\":\"2020082826163\",\"stsType\":\"LINK\",\"screenShot\":[\"//ailabs.alibabausercontent.com/images/e3ad1e95332cceed5043c6920c2d48cf/1623332668689.png\",\"//ailabs.alibabausercontent.com/images/e3ad1e95332cceed5043c6920c2d48cf/1623332671766.png\",\"//ailabs.alibabausercontent.com/images/e3ad1e95332cceed5043c6920c2d48cf/1623332674758.png\",\"//ailabs.alibabausercontent.com/images/e3ad1e95332cceed5043c6920c2d48cf/1623332677633.png\"],\"isOffline\":false,\"stsValue\":\"[\\\"\u56db\u5219\u8fd0\u7b97\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u6d59\u6c5f\u9752\u4e91\u5728\u7ebf\u6559\u80b2\u79d1\u6280\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001162620766&pkg=com.alibaba.ailabs.genie.webapps&vc=423&genieAppId=2020090264001\",\"icon\":\"https://img.alicdn.com/tfs/TB12HQFgZVl614jSZKPXXaGjpXa-136-136.png\",\"description\":\"\u4e3a\u5c0f\u5b66\u751f\u91cf\u8eab\u6253\u9020\u8bed\u6570\u82f1\u79d1\u89c6\u9891\u8bfe\u7a0b\u3002\u4f9d\u9760\u6d59\u6c5f\u6559\u80b2\u51fa\u7248\u793e\u8d44\u6e90\u6253\u9020\u8bfe\u7a0b\uff0c\u8d28\u91cf\u6709\u4fdd\u8bc1\u3002\u5e2e\u52a9\u5bb6\u957f\u9ad8\u6548\u8f85\u5bfc\uff0c\u5b69\u5b50\u8f7b\u677e\u5b66\u4e60\u3002\",\"title\":\"\u9752\u53ea\u8bfe\u5802\",\"voiceDisposition\":\"{\\\"new\\\":[],\\\"old\\\":[]}\",\"subTitle\":\"\u8bed\u6570\u82f1\u4e3b\u8bfe\u4e0d\u7528\u6101\uff0c\u9ad8\u6548\u8f85\u5bfc\u8f7b\u677e\u5b66\u4e60\",\"appId\":\"2020090264001\",\"stsType\":\"MINIAPP\",\"screenShot\":[\"https://img.alicdn.com/tfs/TB1jDX5S1L2gK0jSZFmXXc7iXXa-1280-800.jpg\",\"https://img.alicdn.com/tfs/TB1pxdHS7L0gK0jSZFtXXXQCXXa-1280-800.png\",\"https://img.alicdn.com/tfs/TB1yDFTSYr1gK0jSZFDXXb9yVXa-1280-800.png\",\"https://img.alicdn.com/tfs/TB1jbVLS1L2gK0jSZPhXXahvXXa-1280-800.jpg\"],\"isOffline\":false,\"packageName\":\"com.alibaba.ailabs.genie.webapps_2021001162620766_0.1.18\",\"applicationId\":\"646751ed50d8ed0ddb1877d38da70822\",\"stsValue\":\"[\\\"\u9752\u53ea\u8bfe\u5802\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u5317\u4eac\u4e49\u65b9\u5929\u4e0b\u6559\u80b2\u79d1\u6280\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001157628730&pkg=com.alibaba.ailabs.genie.webapps&vc=181&miniAppId=75\",\"icon\":\"https://img.alicdn.com/tfs/TB1oUZvMeL2gK0jSZFmXXc7iXXa-136-136.png\",\"description\":\"\u8bed\u6570\u57fa\u7840\u5b66\u79d1\uff0c\u540c\u6b65\u8bfe\u5802\u5b66\u4e60\uff0c\u4fdd\u8bc1\u5b66\u79d1\u6210\u7ee9\u4e0d\u843d\u540e\u3002\u8bed\u6587\u4e0e\u6700\u65b0\u90e8\u7f16\u7248\u6559\u6750\u5b8c\u5168\u5339\u914d\uff0c\u6570\u5b66\u4e0e\u73b0\u884c\u4eba\u6559\u7248\u6559\u6750\u5b8c\u5168\u540c\u6b65\uff0c\u4fbf\u4e8e\u5b69\u5b50\u53ca\u65f6\u5de9\u56fa\u3001\u6d88\u5316\u8bfe\u5802\u6240\u5b66\uff0c\u63d0\u524d\u9884\u4e60\uff0c\u517b\u6210\u826f\u597d\u7684\u9884\u4e60\u4e60\u60ef\u3002\u4ee5\u52a8\u6f2b\u6559\u5b66\u4e3a\u4e3b\uff0c\u5728\u6709\u8da3\u7684\u6545\u4e8b\u4e2d\u5b66\u77e5\u8bc6\uff0c\u5bf9\u767d\u98ce\u8da3\u5e7d\u9ed8\uff0c\u6545\u4e8b\u4e3b\u9898\u8d34\u8fd1\u5b69\u5b50\u65e5\u5e38\u751f\u6d3b\uff0c\u5b69\u5b50\u518d\u4e5f\u4e0d\u4f1a\u89c9\u5f97\u5b66\u4e60\u67af\u71e5\u4e4f\u5473\u3002\",\"title\":\"\u5c0f\u5b66\u540c\u6b65\u8f85\u5bfc\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u7ed9\u6211\u64ad\u653e\u5c0f\u5b66\u540c\u6b65\u8f85\u5bfc\\\",\\\"\u5e2e\u6211\u64ad\u653e\u5c0f\u5b66\u540c\u6b65\u8f85\u5bfc\\\",\\\"\u6253\u5f00\u5c0f\u5b66\u540c\u6b65\u8f85\u5bfc\\\",\\\"\u6211\u8981\u542c\u5c0f\u5b66\u540c\u6b65\u8f85\u5bfc\\\",\\\"\u6211\u8981\u770b\u5c0f\u5b66\u540c\u6b65\u8f85\u5bfc\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u5c0f\u5b66\u8bed\u6570\u540c\u6b65\u8f85\u5bfc\",\"appId\":\"2020082826002\",\"stsType\":\"LINK\",\"screenShot\":[\"https://img.alicdn.com/tfs/TB1NbheoND1gK0jSZFsXXbldVXa-1024-600.png\",\"https://img.alicdn.com/tfs/TB1rfJfoHr1gK0jSZR0XXbP8XXa-1024-600.png\",\"https://img.alicdn.com/tfs/TB1qrxfoNn1gK0jSZKPXXXvUXXa-1024-600.png\",\"https://img.alicdn.com/tfs/TB1cT4foQL0gK0jSZFAXXcA9pXa-1024-600.png\"],\"isOffline\":false,\"applicationId\":\"b189694853be1280268149105b99037c\",\"stsValue\":\"[\\\"\u5c0f\u5b66\u540c\u6b65\u8f85\u5bfc\\\"]\"},{\"author\":\"[{\\\"icon\\\":\\\"//ailabs.alibabausercontent.com/images/1bff39d1c198ac13abb74acc6fa3549a/1602818037381.jpg\\\",\\\"name\\\":\\\"\u5317\u4eac\u5c0f\u55e8\u4e50\u5b66\u79d1\u6280\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"youxuemaomathcourse://com.miaokids.mathcourse/applist?pkg=com.miaokids.mathcourse\",\"icon\":\"https://ailabs.alibabausercontent.com/images/1bff39d1c198ac13abb74acc6fa3549a/1602817795908.png\",\"downloadUrl\":\"https://ar-platform.oss-cn-shanghai.aliyuncs.com/images/1bff39d1c198ac13abb74acc6fa3549a/1602815824341.apk\",\"description\":\"\u201c\u4f18\u5b66\u732b\u8f7b\u8bfe\u201c\u662f\u4e00\u6b3e\u9762\u54112-8\u5c81\u513f\u7ae5\u7684AI\u667a\u80fd\u4e92\u52a8\u5b66\u4e60\u8f6f\u4ef6\u3002\u5728\u7ae5\u8da3\u7684\u52a8\u753b\u5f62\u8c61\u5e26\u9886\u4e0b\uff0c\u4ee5AI\u4e92\u52a8\u76f4\u64ad\u4e3a\u4e3b\u7ebf\uff0c\u914d\u5408\u6e38\u620f\u5316\u52a8\u624b\u6e38\u620f\uff0c\u6fc0\u53d1\u5c0f\u670b\u53cb\u7684\u6570\u5b66\u5b66\u4e60\u5174\u8da3\u3002\u901a\u8fc76\u5927\u80fd\u529b\uff08\u6570\u5b66\u903b\u8f91\u3001\u7a7a\u95f4\u611f\u77e5\u3001\u8bed\u8a00\u3001\u8eab\u4f53\u4e0e\u8fd0\u52a8\u3001\u827a\u672f\u3001\u793e\u4f1a\u4e0e\u60c5\u611f\uff09\u9886\u57df\u7684\u57f9\u80b2\uff0c\u5f15\u9886\u5b69\u5b50\u80fd\u591f\u81ea\u4e3b\u5b66\u4e60\uff0c\u5efa\u6784\u81ea\u5df1\u7684\u6570\u5b66\u601d\u7ef4\u4e16\u754c\u3002APP\u4e2d\u6d89\u53ca\u7684\u591a\u79cd\u6559\u5b66\u6a21\u5f0f\uff0c\u8bb2\u89e3\u573a\u666f\u3002\u5747\u4f9d\u636e\u5e7c\u513f\u56ed\u5927\u7eb2\u6539\u7f16\uff0c\u8fdb\u884c\u77e5\u8bc6\u70b9\u5212\u5206\u53ca\u96be\u6613\u7a0b\u5ea6\u8bbe\u5b9a\u3002\u4f18\u5b66\u732b\u8f7b\u8bfe\u65e8\u5728\u8ba9\u6570\u5b66\u66f4\u6709\u8da3\uff0c\u8ba9\u6559\u80b2\u66f4\u771f\u5b9e\uff01\",\"title\":\"\u4f18\u5b66\u732b\u8f7b\u8bfe\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u4f18\u5b66\u732b\u8f7b\u8bfe\\\",\\\"\u8f7b\u8bfe\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u6fc0\u53d1\u5c0f\u670b\u53cb\u7684\u8ba4\u77e5\uff0c\u601d\u7ef4\u7b49\u80fd\u529b\u3002\",\"appId\":\"2020101650003\",\"stsType\":\"NATIVE\",\"screenShot\":[\"//ailabs.alibabausercontent.com/images/1bff39d1c198ac13abb74acc6fa3549a/1602817802281.jpg\",\"//ailabs.alibabausercontent.com/images/1bff39d1c198ac13abb74acc6fa3549a/1602817805335.jpg\",\"//ailabs.alibabausercontent.com/images/1bff39d1c198ac13abb74acc6fa3549a/1602817808062.jpg\",\"//ailabs.alibabausercontent.com/images/1bff39d1c198ac13abb74acc6fa3549a/1602817840312.jpg\"],\"apkVersionCode\":336,\"isOffline\":false,\"packageName\":\"com.miaokids.mathcourse\",\"stsValue\":\"[\\\"\u4f18\u5b66\u732b\u8f7b\u8bfe\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u4e0a\u6d77\u5c0f\u9ea6\u4e92\u52a8\u4f01\u4e1a\u53d1\u5c55\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001163684194&pkg=com.alibaba.ailabs.genie.webapps&vc=401&genieAppId=2020082832048\",\"icon\":\"https://img.alicdn.com/tfs/TB1BMF8Mrr1gK0jSZFDXXb9yVXa-136-136.png\",\"description\":\"\u5c0f\u9177\u4e91\u8bfe\u5802\u4e3a\u5b69\u5b50\u91cf\u8eab\u5b9a\u5236\u57fa\u4e8e\u5bb6\u5ead\u573a\u666f\u7684\u4f53\u7cfb\u5316\u6559\u80b2\u670d\u52a1\uff0c\u6db5\u76d6\u5c11\u513f\uff0c\u5c0f\u5b66\uff0c\u521d\u4e2d\uff0c\u9ad8\u4e2d\u56db\u4e2a\u4f53\u7cfb100000+\u96c6\u6559\u80b2\u5185\u5bb9\uff0c\u4e13\u4e1a\uff0c\u6709\u6548\uff0c\u4e30\u5bcc\uff0c\u7ed9\u4e88\u5b69\u5b50\u826f\u597d\u7684\u6559\u80b2\u3002\",\"title\":\"\u5c0f\u9177\u4e91\u8bfe\u5802\",\"voiceDisposition\":\"{\\\"new\\\":[],\\\"old\\\":[]}\",\"subTitle\":\"\u7ed9\u5b69\u5b50\u66f4\u591a\u8bfe\u7a0b\u9009\u62e9\",\"appId\":\"2020082832048\",\"stsType\":\"MINIAPP\",\"screenShot\":[\"https://img.alicdn.com/tfs/TB12xcUKUH1gK0jSZSyXXXtlpXa-751-439.png\",\"https://img.alicdn.com/tfs/TB1xFsWKQL0gK0jSZFAXXcA9pXa-880-529.png\",\"https://img.alicdn.com/tfs/TB1Ztk4KKT2gK0jSZFvXXXnFXXa-571-363.png\"],\"isOffline\":false,\"packageName\":\"com.alibaba.ailabs.genie.webapps_2021001163684194_0.0.34\",\"applicationId\":\"760d13db8d61c39eee36a0ce1f504d83\",\"stsValue\":\"[\\\"\u5c0f\u9177\u4e91\u8bfe\u5802\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u5317\u4eac\u4e49\u65b9\u5929\u4e0b\u6559\u80b2\u79d1\u6280\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2019110168822427&pkg=com.alibaba.ailabs.genie.webapps&vc=181&genieAppId=2020082832031\",\"icon\":\"https://img.alicdn.com/tfs/TB1QLP.MkL0gK0jSZFtXXXQCXXa-136-136.png\",\"description\":\"\u4ee5\u52a8\u6f2b\u6559\u5b66\u4e3a\u4e3b\uff0c\u5728\u6709\u8da3\u7684\u6545\u4e8b\u4e2d\u5b66\u77e5\u8bc6\uff0c\u5bf9\u767d\u98ce\u8da3\u5e7d\u9ed8\uff0c\u6545\u4e8b\u4e3b\u9898\u8d34\u8fd1\u5b69\u5b50\u65e5\u5e38\u751f\u6d3b\uff0c\u5b69\u5b50\u518d\u4e5f\u4e0d\u4f1a\u89c9\u5f97\u5b66\u4e60\u67af\u71e5\u4e4f\u5473\u3002\u8bed\u6570\u57fa\u7840\u5b66\u79d1\uff0c\u540c\u6b65\u8bfe\u5802\u5b66\u4e60\uff0c\u4fdd\u8bc1\u5b66\u79d1\u6210\u7ee9\u4e0d\u843d\u540e\u3002\u4e2d/\u82f1\u6587\u5206\u7ea7\u9605\u8bfb\u8bfe\uff0c\u8d62\u5728\u9605\u8bfb\u8d77\u8dd1\u7ebf\uff0c\u4e3a\u9ad8\u5e74\u7ea7\u7684\u9605\u8bfb\u548c\u5199\u4f5c\u6253\u597d\u57fa\u7840\u3002\u6b27\u7f8e\u539f\u7248\u82f1\u8bed\u6559\u7a0b\uff0c\u57f9\u517b\u5b69\u5b50\u539f\u6c41\u539f\u5473\u7684\u82f1\u8bed\u601d\u7ef4\u3002\u6570\u5b66\u540d\u5e08\u8f85\u5bfc\u8bfe\uff0c\u5de9\u56fa\u8bfe\u5802\u77e5\u8bc6\uff0c\u7a81\u7834\u5f31\u9879\uff0c\u4f20\u6388\u89e3\u9898\u6280\u5de7\u3002\",\"title\":\"\u5c0f\u5b66\u540d\u5e08\u4f18\u8bfe\",\"voiceDisposition\":\"{\\\"new\\\":[],\\\"old\\\":[]}\",\"subTitle\":\"\u9884\u4e60\u590d\u4e60\u597d\u5e2e\u624b\",\"appId\":\"2020082832031\",\"stsType\":\"MINIAPP\",\"screenShot\":[\"https://img.alicdn.com/tfs/TB1VMBbD5_1gK0jSZFqXXcpaXXa-1276-747.jpg\",\"https://img.alicdn.com/tfs/TB1KTU_DUz1gK0jSZLeXXb9kVXa-1281-751.jpg\",\"https://img.alicdn.com/tfs/TB11R5nXicKOu4jSZKbXXc19XXa-1281-748.jpg\",\"https://img.alicdn.com/tfs/TB1KbFXD7P2gK0jSZPxXXacQpXa-1281-750.jpg\\n\"],\"isOffline\":false,\"packageName\":\"com.alibaba.ailabs.genie.webapps_2019110168822427_1.0.26\",\"applicationId\":\"5b4f2cc46827ef66c49dc2ea6a7b38bb\",\"stsValue\":\"[\\\"\u5c0f\u5b66\u540d\u5e08\u4f18\u8bfe\\\"]\"},{\"author\":\"[{\\\"name\\\":\\\"\u6d4e\u5357\u667a\u5b66\u9177\u6559\u80b2\u79d1\u6280\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001157628730&pkg=com.alibaba.ailabs.genie.webapps&vc=305&miniAppId=114\",\"icon\":\"https://img.alicdn.com/tfs/TB10Br4Moz1gK0jSZLeXXb9kVXa-136-136.png\",\"description\":\"\u4e0e\u4eba\u6559\u793e\u6559\u6750\u540c\u6b65\u5339\u914d\uff0c\u4e3a\u5c0f\u5b66\u751f\u63d0\u4f9b\u8bed\u6587\u3001\u6570\u5b66\u3001\u82f1\u8bed\u7b49\u57fa\u7840\u5b66\u79d1\u7684\u8bfe\u5802\u9884\u4e60\u5fae\u8bfe\uff0c\u4fbf\u4e8e\u5b69\u5b50\u517b\u6210\u826f\u597d\u7684\u9884\u4e60\u4e60\u60ef\u3002\u8bfe\u7a0b\u5185\u5bb9\u901a\u8fc7\u7cfb\u5217\u5361\u901a\u52a8\u753b\uff0c\u5b69\u5b50\u5728\u548c\u4e3b\u4eba\u516c\u5386\u9669\u7684\u8fc7\u7a0b\u4e2d\u83b7\u53d6\u5b66\u79d1\u77e5\u8bc6\uff0c\u5bd3\u6559\u4e8e\u4e50\u3002\",\"title\":\"\u4e94\u597d\u5bfc\u5b66\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u7ed9\u6211\u64ad\u653e\u4e94\u597d\u5bfc\u5b66\\\",\\\"\u5e2e\u6211\u64ad\u653e\u4e94\u597d\u5bfc\u5b66\\\",\\\"\u6253\u5f00\u4e94\u597d\u5bfc\u5b66\\\",\\\"\u6211\u8981\u542c\u4e94\u597d\u5bfc\u5b66\\\",\\\"\u6211\u8981\u770b\u4e94\u597d\u5bfc\u5b66\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u4f34\u5b69\u5b50\u5171\u6210\u957f\",\"appId\":\"2020082826014\",\"stsType\":\"LINK\",\"screenShot\":[\"https://img.alicdn.com/tfs/TB1YOO5bBBh1e4jSZFhXXcC9VXa-1024-600.png,\\nhttps://img.alicdn.com/tfs/TB1vTLPgicKOu4jSZKbXXc19XXa-1024-600.png,\\nhttps://img.alicdn.com/tfs/TB1L.mNK5_1gK0jSZFqXXcpaXXa-1024-600.png,\\nhttps://img.alicdn.com/tfs/TB1CPqOK.Y1gK0jSZFCXXcwqXXa-1024-600.png\"],\"isOffline\":false,\"applicationId\":\"5d209137881904b03ad130feaf9672d5\",\"stsValue\":\"[\\\"\u4e94\u597d\u5bfc\u5b66\\\"]\"},{\"author\":\"[{\\\"icon\\\":\\\"//ailabs.alibabausercontent.com/images/a1d50185e7426cbb0acad1e6ca74b9aa/1622695631813.jpg\\\",\\\"name\\\":\\\"\u5317\u4eac\u4e49\u65b9\u5929\u4e0b\u6559\u80b2\u79d1\u6280\u6709\u9650\u516c\u53f8\\\"}]\",\"actionUrl\":\"efunbox://com.edufound.android.xyyf/main?pkg=com.edufound.android.xyyf&url=http://m-xyyf-web.ai160.com/stage/index/index.html?\",\"icon\":\"https://ailabs.alibabausercontent.com/images/a1d50185e7426cbb0acad1e6ca74b9aa/1622695561813.png\",\"downloadUrl\":\"https://ailabs.alibabausercontent.com/largeFile/1631069328273_efunbox_mobile_xyyf_v10015_20210907114351_2012_r.apk\",\"description\":\"\u5b66\u6709\u4e49\u65b9- -\u6211\u7684\u5bb6\u5ead\u6559\u5e08\uff1a\u89e3\u653e\u5bb6\u957f\uff0c\u57f9\u517b\u5b69\u5b50\u81ea\u4e3b\u5b66\u4e60\u80fd\u529b\uff1b\\n\u4e13\u4e3a1-4\u5e74\u7ea7\u5c0f\u5b66\u751f\u63d0\u4f9b\uff1a\\n1\u3001\u8bed\u6587/\u6570\u5b66 \u4e24\u5927\u4e3b\u79d1\uff0c\u6821\u5916\u5b66\u4e60\u73af\u8282\uff08\u9884\u4e60/\u590d\u4e60\uff09\uff0c\u201c\u5bfc-\u6559-\u5b66-\u6d4b-\u8bc4\u201d\u7684\u5b8c\u6574\u5b66\u4e60\u6d41\u7a0b\uff0c\u52a9\u529b\u5b66\u751f\u517b\u6210\u81ea\u4e3b\u5b66\u4e60\u7684\u80fd\u529b\u4e0e\u4e60\u60ef\u3002\\n2\u3001\u914d\u5957\u6570\u5b57\u56fe\u4e66\u9986\uff0c\u63d0\u4f9b\u5168\u79d1\u6570\u5b57\u6559\u7a0b\uff0c\u82f1\u8bed\u7ed8\u672c\u3001\u6570\u5b66\u601d\u7ef4\u3001\u8bed\u6587\u9605\u8bfb\u5199\u4f5c\u3001\u79d1\u5b66\u3001\u827a\u672f\u7b49\uff0c\u5bf9\u6821\u5185\u6559\u5b66\u8bfe\u7a0b\u5185\u5bb9\u4f5c\u51fa\u6709\u6548\u8865\u5145\u3002\\n3\u3001\u8bed\u6587\u8bfe\u6587\u914d\u97f3\u79c0\uff0c\u6709\u8da3\u597d\u7528\u7684\u5b8c\u6210\u5bb6\u5ead\u4f5c\u4e1a\uff08\u8bfe\u6587\u6717\u8bfb\uff09\u7684\u5c0f\u5e94\u7528\u597d\u5de5\u5177\u3002\\n4\u3001\u7cbe\u5f69\u7684\u7ebf\u4e0a\u201c\u77e5\u8bc6\u7ade\u8d5b\u201d\u6d3b\u52a8\uff0c\u5168\u56fd\u5b69\u5b50\u540c\u53f0\u7ade\u6280\uff0c\u6fc0\u53d1\u5168\u5bb6\u4eba\u5171\u540c\u53c2\u4e0e\u70ed\u60c5\u4e0e\u7ade\u4e89\u4f18\u80dc\u6fc0\u52b1\u3002\\n5\u3001\u914d\u5957\u5b66\u4e60\u793e\u7fa4\u670d\u52a1\uff0c\u901a\u8fc7\u5206\u53d1\u5b66\u4e60\u8d44\u6599\u3001\u5173\u952e\u6559\u5b66\u8282\u70b9\u7684\u514d\u8d39\u76f4\u64ad\u8bfe\u3001\u5b66\u4e60\u6253\u5361\u7b49\u8f85\u52a9\u670d\u52a1\uff0c\u5f15\u5bfc\u548c\u4fc3\u8fdb\u5b69\u5b50\u7684\u6b63\u786e\u5b66\u4e60\u65b9\u6cd5\u3001\u4fdd\u969c\u5b66\u4e60\u7684\u6709\u6548\u6027\u3001\u57f9\u517b\u597d\u7684\u5b66\u4e60\u4e60\u60ef\u3002\",\"title\":\"\u5b66\u6709\u4e49\u65b9\",\"voiceDisposition\":\"{\\\"new\\\":[[\\\"\u5b66\u6709\u4e49\u65b9\uff0c\u6253\u5f00\u77e5\u8bc6\u7ade\u8d5b\\\",\\\"\u5b66\u6709\u4e49\u65b9\uff0c\u6253\u5f00\u6570\u5b57\u56fe\u4e66\u9986\\\"]],\\\"old\\\":[]}\",\"subTitle\":\"\u6559\u6750\u540c\u6b65,\u9ad8\u6548\u9884\u590d\u4e60\",\"appId\":\"2021052578004\",\"stsType\":\"NATIVE\",\"screenShot\":[\"//ailabs.alibabausercontent.com/images/a1d50185e7426cbb0acad1e6ca74b9aa/1622695502734.jpg\",\"//ailabs.alibabausercontent.com/images/a1d50185e7426cbb0acad1e6ca74b9aa/1622695504962.jpg\",\"//ailabs.alibabausercontent.com/images/a1d50185e7426cbb0acad1e6ca74b9aa/1622695506682.jpg\",\"//ailabs.alibabausercontent.com/images/a1d50185e7426cbb0acad1e6ca74b9aa/1622695508198.jpg\"],\"apkVersionCode\":10015,\"isOffline\":false,\"packageName\":\"com.edufound.android.xyyf\",\"stsValue\":\"[\\\"\u5b66\u6709\u4e49\u65b9\\\"]\"}],\"searchQuery\":[{\"utterance\":\"\u6211\u8981\u5b66\u6570\u5b66\"}]}"

    return-object v0
.end method

.method public initData(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "data"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {}, Lcom/alibaba/ailabs/base/util/BaseConstant;->isDebugPackage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "test"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    sget-object p1, Lcom/alibaba/ailabs/searchbox/SearchConstans;->DATA_SEARCH_CONTENT:Ljava/lang/String;

    .line 57
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->setSearchDataBean(Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;)V

    .line 58
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->isSearchDataNull()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 59
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u5f53\u524d\u6ca1\u6709\u627e\u5230\u53ef\u7528\u5185\u5bb9\uff0c\u60a8\u53ef\u4ee5\u6362\u4e2a\u5185\u5bb9\u518d\u8bd5\u8bd5\u3002"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    .line 62
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/presenter/AppSearchPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 65
    :cond_2
    new-instance p1, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;

    invoke-direct {p1}, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/presenter/AppSearchPresenter;->adapter:Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;

    .line 66
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/presenter/AppSearchPresenter;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/presenter/AppSearchPresenter;->adapter:Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/searchbox/presenter/AppSearchPresenter;->initViewContent(Landroid/app/Activity;Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init Data Exception -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppSearchPresenter-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/alibaba/ailabs/base/util/BaseConstant;->isDebugPackage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "\u5e94\u7528\u641c\u7d22\u7ed3\u679c\uff1a\u6570\u636e\u89e3\u6790\u51fa\u9519."

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/presenter/AppSearchPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public itemClick(I)V
    .locals 4

    .line 85
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 88
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "AppSearchPresenter-l"

    if-gt p1, v0, :cond_1

    .line 89
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", index bean = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getStsType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NATIVE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->openAppDetail(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getIcon()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppSearch"

    invoke-static {p1, v1, v3, v2, v0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->openBySchemaOrPkgName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string p1, "index out of search list size"

    .line 97
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter;->onCreate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPause()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter;->onPause()V

    .line 105
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;

    move-result-object v0

    const-string v1, " -- onPause"

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->stopOpenTask(Ljava/lang/String;)V

    return-void
.end method
