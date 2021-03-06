Managing Datasets and Dataverses
================================

.. contents:: |toctitle|
	:local:

Dataverses
----------

Move a Dataverse
^^^^^^^^^^^^^^^^

Moves a dataverse whose id is passed to a new dataverse whose id is passed. The dataverse alias also may be used instead of the id. If the moved dataverse has a guestbook, template, metadata block, link, or featured dataverse that is not compatible with the destination dataverse, you will be informed and given the option to force the move and remove the association. Only accessible to superusers. ::

    curl -H "X-Dataverse-key: $API_TOKEN" -X POST http://$SERVER/api/dataverses/$id/move/$destination-id

Unlink a Dataverse
^^^^^^^^^^^^^^^^^^

Removes a link between a dataverse and another dataverse. Only accessible to superusers. ::

    curl -H "X-Dataverse-key: $API_TOKEN" -X DELETE http://$SERVER/api/dataverses/$id/deleteLink/$linking-dataverse-id

Datasets
--------

Move a Dataset
^^^^^^^^^^^^^^

Moves a dataset whose id is passed to a dataverse whose alias is passed. If the moved dataset has a guestbook that is not compatible with the destination dataverse, you will be informed and given the option to force the move and remove the guestbook. Only accessible to superusers. ::

    curl -H "X-Dataverse-key: $API_TOKEN" -X POST http://$SERVER/api/datasets/$id/move/$alias

Unlink a Dataset
^^^^^^^^^^^^^^^^

Removes a link between a dataset and a dataverse. Only accessible to superusers. ::

    curl -H "X-Dataverse-key: $API_TOKEN" -X DELETE http://$SERVER/api/datasets/$id/deleteLink/$linking-dataverse-id